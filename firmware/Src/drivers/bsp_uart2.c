#include "bsp_uart2.h"

UART_HandleTypeDef huart2;

/** 指向信号量的指针 */
static TX_SEMAPHORE uart2_rx_sem;

/** Buffer for TX DMA */
static uint8_t uart2_tx_buff_data[256] __attribute__((section("DMA_RAM")));
/** Buffer for RX DMA */
static uint8_t uart2_rx_dma_buffer[256] __attribute__((section("DMA_RAM")));

/* Ring buffer for TX data */
static lwrb_t usart_tx_buff;
static size_t usart_dma_tx_len;

/** 定义串口数据接收回调函数 */
static uart_rx_handler_cb uart_rx_handler;

void bsp_uart2_install_rx_callback(uart_rx_handler_cb cb)
{
    uart_rx_handler = cb;
}

/** Process received data over UART */
static void usart_process_data(const uint8_t *data, size_t len)
{
    const uint8_t *d = data;

    for (; len > 0; --len, ++d)
    {
        if (uart_rx_handler)
        {
            (*uart_rx_handler)(*d);
        }
    }
}

/** Check for new data received with DMA */
static void usart_rx_check(void)
{
    static size_t old_pos;

    /* Calculate current position in buffer */
    const size_t pos = ARRAY_LEN(uart2_rx_dma_buffer) - __HAL_DMA_GET_COUNTER(huart2.hdmarx);

    if (pos != old_pos)
    {
        /* Check change in received data */
        if (pos > old_pos)
        {
            /* Current position is over previous one */
            /* We are in "linear" mode */
            /* Process data directly by subtracting "pointers" */
            usart_process_data(&uart2_rx_dma_buffer[old_pos], pos - old_pos);
        }
        else
        {
            /* We are in "overflow" mode */
            /* First process data to the end of buffer */
            usart_process_data(&uart2_rx_dma_buffer[old_pos], ARRAY_LEN(uart2_rx_dma_buffer) - old_pos);

            /* Check and continue with beginning of buffer */
            if (pos > 0)
            {
                usart_process_data(&uart2_rx_dma_buffer[0], pos);
            }
        }
    }

    old_pos = pos; /* Save current position as old */
}

/**
 * \brief Checks for data in buffer and starts transfer if not in progress
 * \note  It disables interrupts to prevent race condition
 */
static void usart_start_tx_dma(void)
{
    /* Check if transfer active */
    if (usart_dma_tx_len > 0)
    {
        return;
    }

    /* 关闭全局中断 */
    TX_INTERRUPT_SAVE_AREA
    TX_DISABLE;

    /* If transfer is not on-going */
    if (usart_dma_tx_len == 0 && (usart_dma_tx_len = lwrb_get_linear_block_read_length(&usart_tx_buff)) > 0)
    {
        /* Limit maximal size to transmit at a time */
        if (usart_dma_tx_len > 128)
        {
            usart_dma_tx_len = 128;
        }

        /* Clear all flags */
        __HAL_DMA_CLEAR_FLAG(huart2.hdmatx, __HAL_DMA_GET_TC_FLAG_INDEX(&huart2));
        __HAL_DMA_CLEAR_FLAG(huart2.hdmatx, __HAL_DMA_GET_HT_FLAG_INDEX(&huart2));
        __HAL_DMA_CLEAR_FLAG(huart2.hdmatx, __HAL_DMA_GET_DME_FLAG_INDEX(&huart2));
        __HAL_DMA_CLEAR_FLAG(huart2.hdmatx, __HAL_DMA_GET_FE_FLAG_INDEX(&huart2));
        __HAL_DMA_CLEAR_FLAG(huart2.hdmatx, __HAL_DMA_GET_TE_FLAG_INDEX(&huart2));

        /* Configure DMA */
        HAL_UART_Transmit_DMA(&huart2, (uint8_t *)lwrb_get_linear_block_read_address(&usart_tx_buff), usart_dma_tx_len);
    }

    /* 恢复全局中断 */
    TX_RESTORE;
}

size_t bsp_uart2_send(uint8_t *data, uint16_t len)
{
    size_t length = 0;

    if (lwrb_get_free(&usart_tx_buff) >= len)
    {
        length = lwrb_write(&usart_tx_buff, data, len);

        usart_start_tx_dma();
    }

    return length;
}

static void uart2_config(uint32_t baudrate)
{
    huart2.Instance          = USART2;
    huart2.Init.BaudRate     = baudrate;
    huart2.Init.WordLength   = UART_WORDLENGTH_8B;
    huart2.Init.StopBits     = UART_STOPBITS_1;
    huart2.Init.Parity       = UART_PARITY_NONE;
    huart2.Init.Mode         = UART_MODE_TX_RX;
    huart2.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
    huart2.Init.OverSampling = UART_OVERSAMPLING_16;
    HAL_UART_Init(&huart2);

    /* Enable DMA tx complete interupt */
    __HAL_DMA_ENABLE_IT(huart2.hdmatx, DMA_IT_TC);

    /* Enable idle line interrupt */
    __HAL_UART_ENABLE_IT(&huart2, UART_IT_IDLE);

    /* Enable DMA rx HT & TC interrupts */
    __HAL_DMA_ENABLE_IT(huart2.hdmarx, DMA_IT_TC);
    __HAL_DMA_ENABLE_IT(huart2.hdmarx, DMA_IT_HT);

    /* Start receiving. */
    HAL_UART_Receive_DMA(&huart2, uart2_rx_dma_buffer, sizeof(uart2_rx_dma_buffer));
}

static void uart2_rx_thread_entry(ULONG thread_input)
{
    (void)thread_input;

    /* 创建信号量, 初始值是 0 */
    tx_semaphore_create(&uart2_rx_sem, "uart2_rx", 0);

    while (1)
    {
        /* 永久方式等待信号量 */
        const uint8_t result = tx_semaphore_get(&uart2_rx_sem, TX_WAIT_FOREVER);

        if (result == TX_SUCCESS)
        {
            usart_rx_check();
        }
        HAL_UART_Receive_DMA(&huart2, uart2_rx_dma_buffer, sizeof(uart2_rx_dma_buffer));
    }
}

void bsp_uart2_init(uint32_t baudrate)
{
    /* 初始化环形缓冲区 */
    lwrb_init(&usart_tx_buff, uart2_tx_buff_data, sizeof(uart2_tx_buff_data));

    /* 初始化串口外设 */
    uart2_config(baudrate);

    static TX_THREAD _thread;
    static uint8_t   _thread_stack[1024];

    tx_thread_create(&_thread,
                     "uart2 rx",
                     uart2_rx_thread_entry,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_UART2_RX,
                     TX_THREAD_PRIORITY_UART2_RX,
                     100,
                     TX_AUTO_START);
}

void bsp_uart2_dma_tx_cplt_cb(void)
{
    /* Data sent, ignore these */
    lwrb_skip(&usart_tx_buff, usart_dma_tx_len);

    usart_dma_tx_len = 0;

    /* Try to send more data */
    usart_start_tx_dma();
}

void bsp_uart2_dma_rx_halt_cb(void)
{
    tx_semaphore_put(&uart2_rx_sem);
}

void bsp_uart2_dma_rx_cplt_cb(void)
{
    tx_semaphore_put(&uart2_rx_sem);
}

void bsp_uart2_rx_idle_cb(void)
{
    tx_semaphore_put(&uart2_rx_sem);
}