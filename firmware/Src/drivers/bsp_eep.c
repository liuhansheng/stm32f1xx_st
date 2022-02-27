#include "bsp_i2c1.h"
#include "bsp_eep.h"

#define EEPROM_ADDRESS 0xA0 /**i2c eep地址  */
void epp_init(void)
{
    bsp_i2c_init();
}
void epp_read_data(uint8_t reg,void *buff ,uint8_t size)
{
    bsp_i2c_read_byte_from_slave(EEPROM_ADDRESS,reg,buff,size,100);
}
void epp_write_data(uint8_t reg,void *buff ,uint8_t size)
{
    bsp_i2c_write_byte_from_slave(EEPROM_ADDRESS,reg,buff,size,100);
}