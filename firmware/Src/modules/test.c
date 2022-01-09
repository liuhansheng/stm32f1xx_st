#include "test.h"
#include "board.h"
#include "bsp_uart2.h"
#include "system.h"

void test_node_loop(void)
{
   static uint32_t s;
    while(1)
    {
        s++;
        bsp_uart2_send((uint8_t*)&s,sizeof(s));
        sys_delay_ms(100);
    }

}
void test_init(void)
{
    bsp_uart2_init(115200);
    static TX_THREAD _thread;
    static uint8_t   _thread_stack[1024];

    tx_thread_create(&_thread,
                     "test_node",
                     test_node_loop,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_UART2_RX,
                     TX_THREAD_PRIORITY_UART2_RX,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);
}