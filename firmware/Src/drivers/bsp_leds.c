#include "board.h"
#include "bsp_leds.h"
#include "bsp_io_out.h"
#include "system.h"

static void led_timer_toggle(ULONG param)
{
    (void)param;
    bsp_write_do_toggle(DO_LED_GREEN);
	sys_delay_ms(100);
}


void leds_init(void)
{
    static TX_THREAD _thread;
    static uint8_t   _thread_stack[1024];
    bsp_write_do_toggle(DO_LED_GREEN);
    bsp_write_do_toggle(DO_LED_RED);
    bsp_write_do_toggle(DO_LED_BLUE);

    tx_thread_create(&_thread,
                     "led_node",
                     led_timer_toggle,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_UAVCAN_TX,
                     TX_THREAD_PRIORITY_UAVCAN_TX,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);
}
