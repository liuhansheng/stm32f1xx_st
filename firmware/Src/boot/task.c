#include "tx_api.h"

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
    /** 初始化参数存储模块 */
    flashdb_init(NULL);
    bsp_config_param_init();
    uavcan_node_id_init();

    /** 初始化调试模块 */
    debug_init();

    /** 注册线程堆栈错误通知回调 */
    tx_thread_stack_error_notify(rtos_stack_error_handler);

    /** 初始化 ADC 输入 */
    bsp_adc_task_init();

    /** 初始化 DI 输入 */
    bsp_di_incapture_init();

    /** 初始化 DO 输出 */
    bsp_io_out_init();

    /** 初始化 DAC 输出 */
    bsp_pwm_dac_init();

    /** 初始化 LED 输出 */
    leds_init();


    /* 看门狗初始化 */
    // bsp_watchdog_init();

    tlm_mav_init();

    app_init();

    bsp_print_config_param(&bsp_config_param);
    log_i("SYSTEM READY!");
}