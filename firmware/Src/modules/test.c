#include "test.h"
#include "board.h"
#include "bsp_uart2.h"
#include "bsp_uart1.h"
#include "system.h"
#include "bsp_adc.h"
static float adc_value0;
static float adc_value1;
static uint8_t data_uart2;
static uint8_t data_uart1;
void uart2_read_data(uint8_t data)
{
    data_uart2 = data;
}
void uart1_read_data(uint8_t data)
{
    data_uart1 = data;
}
void test_node_loop(void)
{
   static uint32_t s;
   
    while(1)
    {
        s++;
        bsp_uart2_send((uint8_t*)&s,sizeof(s));
        bsp_uart1_send((uint8_t*)&s,sizeof(s));
        printf("hello world \n");
        bsp_get_adc_volt(0,&adc_value0);
        bsp_get_adc_volt(1,&adc_value1);

        sys_delay_ms(100);
    }

}
void test_init(void)
{
    bsp_uart2_init(115200);
    bsp_uart2_install_rx_callback(uart2_read_data);
    bsp_uart1_init(115200);
    bsp_uart1_install_rx_callback(uart1_read_data);
    bsp_task_adc_init();
    static TX_THREAD _thread;
    static uint8_t   _thread_stack[1024];

    tx_thread_create(&_thread,
                     "test_node",
                     test_node_loop,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_TEST,
                     TX_THREAD_PRIORITY_TEST,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);
}