#include "tx_api.h"
#include "bsp_leds.h"
#include "bsp_io_out.h"
#include "bsp_adc.h"
#include "test.h"
#include "param.h"
static void rtos_stack_error_handler(TX_THREAD *thread_ptr)
{
    (void)thread_ptr;

    while (1)
    {
    }
}

void tx_application_define(void *first_unused_memory)
{
    (void)first_unused_memory;

#ifdef TX_ENABLE_EVENT_TRACE
    static uint8_t trace_buffer[6 * 1024];
    tx_trace_enable(trace_buffer, sizeof(trace_buffer), 32);
#endif
    /** 注册线程堆栈错误通知回调 */
    tx_thread_stack_error_notify(rtos_stack_error_handler);

    /** 初始化 DO 输出 */
    bsp_io_out_init();

    /** 初始化 LED 输出 */
    leds_init();

    param_init();

    test_init();

}