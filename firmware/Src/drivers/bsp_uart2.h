#pragma once

#include "bsp_uarts.h"

extern UART_HandleTypeDef huart2;

void bsp_uart2_dma_tx_cplt_cb(void);
void bsp_uart2_dma_rx_halt_cb(void);
void bsp_uart2_dma_rx_cplt_cb(void);
void bsp_uart2_rx_idle_cb(void);

void bsp_uart2_init(uint32_t baudrate);
void bsp_uart2_install_rx_callback(uart_rx_handler_cb cb);

size_t bsp_uart2_send(uint8_t *data, uint16_t len);