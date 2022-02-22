#pragma once

#include <stdbool.h>
#include <stdint.h>

#include "stm32f1xx_hal.h"
#include "tx_api.h"
#include "tx_user.h"
#include "lwrb/lwrb.h"
#include "board.h"



typedef void (*uart_rx_handler_cb)(const uint8_t data);