#pragma once
#include <stdbool.h>
#include <stdint.h>
#include "main.h"
extern SPI_HandleTypeDef hspi1;
void bsp_spi1_init(void);
void bsp_spi1_transfer(uint8_t * tx_data,uint8_t * rx_data,uint8_t length);
void bsp_spi1_transfer_byte(uint8_t tx_byte);