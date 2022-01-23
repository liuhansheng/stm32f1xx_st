#pragma once
#include <stdbool.h>
#include <stdint.h>


#define GPIO_TYPE_INPUT     0
#define GPIO_TYPE_PULLUP    1
#define GPIO_TYPE_PULLDOWN  2
#define GPIO_TYPE_INCAPTURE 3

#define INCAPTURE_TIM_PRESCALER  719      /**  systemclock 72M   10us 一个tick */
#define INCAPTURE_PERIOD         65535    /**  655.35 ms*/
void  bsp_di_incapture_init(void);
