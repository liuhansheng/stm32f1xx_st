#pragma once

#include <stdbool.h>
#include <stdint.h>
typedef enum
{
    DO_LED_BLUE = 0,
    DO_LED_GREEN,
    DO_LED_RED,
} do_map_enum;

void              bsp_io_out_init(void);
void bsp_write_do(uint8_t index, uint8_t state);
void              bsp_write_do_toggle(uint8_t index);
int               bsp_read_do(uint8_t index);