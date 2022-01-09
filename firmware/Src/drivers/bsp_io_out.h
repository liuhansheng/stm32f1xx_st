#pragma once

#include <stdbool.h>
#include <stdint.h>
#include "bsp_public_header.h"

typedef enum
{
    DO_01 = 0,
    DO_02,
    DO_03,
    DO_04,
    DO_05,
    DO_06,
    DO_07,
    DO_08,
    DO_09,
    DO_10,
    DO_11,
    DO_12,
    DO_13,
    DO_14,
    DO_15,
    DO_16,
    DO_17,
    DO_18,
    DO_19,
    DO_20,
    DO_21,
    DO_22,
    DO_23,
    DO_24,
    DO_25,
    DO_26,
    DO_27,
    DO_28,
    DO_29,
    DO_LED_BLUE,
    DO_LED_GREEN,
    DO_LED_RED,
} do_map_enum;

void              bsp_io_out_init(void);
BSP_ERR_CODE_ENUM bsp_write_do(uint8_t index, uint8_t state);
void              bsp_write_do_toggle(uint8_t index);
int               bsp_read_do(uint8_t index);