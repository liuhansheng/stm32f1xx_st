#pragma once 
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

extern I2C_HandleTypeDef hi2c1;
void bsp_i2c_init(void);
void bsp_i2c_read(void *buff,uint8_t size,uint8_t time_out);
void bsp_i2c_write(void *buff,uint8_t size,uint8_t time_out);