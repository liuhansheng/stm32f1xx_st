#pragma once 
#include <stdlib.h>
#include <stdbool.h>

void epp_init(void);
void epp_read_data(uint8_t reg,void *buff ,uint8_t size);
void epp_write_data(uint8_t reg,void *buff ,uint8_t size);