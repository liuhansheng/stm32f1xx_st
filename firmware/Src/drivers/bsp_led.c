#include "board.h"
#include "bsp_leds.h"
#include "bsp_io_out.h"

static void led_timer_toggle(ULONG param)
{
    (void)param;
    bsp_write_do_toggle(DO_LED_GREEN);
}


void leds_init(void)
{
    static TX_TIMER _timer;
    tx_timer_create(&_timer, "system_running", led_timer_toggle, 0, 1, 500, TX_AUTO_ACTIVATE);
}
