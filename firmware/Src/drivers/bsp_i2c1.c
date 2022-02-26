#include "main.h"
#include "bsp_i2c1.h"
I2C_HandleTypeDef hi2c1;
void bsp_i2c_init(void)
{
    hi2c1.Instance = I2C1;
    hi2c1.Init.ClockSpeed = 100000;
    hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
    hi2c1.Init.OwnAddress1 = 0;
    hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
    hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    hi2c1.Init.OwnAddress2 = 0;
    hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
    if (HAL_I2C_Init(&hi2c1) != HAL_OK);
}
void bsp_i2c_read_byte_from_slave(uint8_t i2c_addr,uint8_t reg, void *buff,uint8_t size,uint8_t time_out)
{
  HAL_I2C_Mem_Write(&hi2c1, i2c_addr, reg, I2C_MEMADD_SIZE_8BIT, buff, size, 100);
}
void bsp_i2c_write_byte_from_slave(uint8_t i2c_addr,uint8_t reg,void *buff,uint8_t size,uint8_t time_out)
{
    HAL_I2C_Mem_Read(&hi2c1, i2c_addr, reg, I2C_MEMADD_SIZE_8BIT, buff, size, 100);
}
