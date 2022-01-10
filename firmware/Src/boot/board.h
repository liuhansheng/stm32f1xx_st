#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "tx_user.h"
#include "stm32f1xx_hal.h"
#include "tx_api.h"

void Error_Handler(void);
void assert_failed(uint8_t *file, uint32_t line);