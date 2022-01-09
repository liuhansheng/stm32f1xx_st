#include "bsp_uart1.h"
#include "bsp_uart2.h"
#include "bsp_uart3.h"
#include "bsp_uart6.h"
#include "bsp_uarts.h"

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == USART1)
    {
        bsp_uart1_dma_tx_cplt_cb();
    }
    else if (huart->Instance == USART2)
    {
        bsp_uart2_dma_tx_cplt_cb();
    }
    else if (huart->Instance == USART3)
    {
        bsp_uart3_dma_tx_cplt_cb();
    }
    else if (huart->Instance == USART6)
    {
        bsp_uart6_dma_tx_cplt_cb();
    }
}

void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == USART1)
    {
        bsp_uart1_dma_rx_halt_cb();
    }
    else if (huart->Instance == USART2)
    {
        bsp_uart2_dma_rx_halt_cb();
    }
    else if (huart->Instance == USART3)
    {
        bsp_uart3_dma_rx_halt_cb();
    }
    else if (huart->Instance == UART4)
    {
    }
    else if (huart->Instance == USART6)
    {
        bsp_uart6_dma_rx_halt_cb();
    }
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == USART1)
    {
        bsp_uart1_dma_rx_cplt_cb();
    }
    else if (huart->Instance == USART2)
    {
        bsp_uart2_dma_rx_cplt_cb();
    }
    else if (huart->Instance == USART3)
    {
        bsp_uart3_dma_rx_cplt_cb();
    }
    else if (huart->Instance == UART4)
    {
    }
    else if (huart->Instance == USART6)
    {
        bsp_uart6_dma_rx_cplt_cb();
    }
}