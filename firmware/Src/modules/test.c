#include "test.h"
#include "board.h"
#include "bsp_uart2.h"
#include "bsp_uart1.h"
#include "system.h"
#include "bsp_adc.h"
#include "bsp_incapture.h"
#include "fdb_port.h"
#include "param.h"
#include "flash_w25q.h"
#include "bsp_spi.h"
#include "bsp_spi_flash.h"
static float adc_value[6];
static uint8_t data_uart2;
static uint8_t data_uart1;
static float param_test[4];
void uart2_read_data(uint8_t data)
{
    data_uart2 = data;
}
void uart1_read_data(uint8_t data)
{
    data_uart1 = data;
}
void param_get_init(void)
{
    param_get_value_by_group(str,max,&param_test[0]);
    param_get_value_by_group(str,min,&param_test[1]);
    param_get_value_by_group(spd,max,&param_test[2]);
    param_get_value_by_group(spd,min,&param_test[3]);
}
static uint8_t test_w25q_write[100] = {1,2,3};
static uint8_t test_w25q_read[100] = {0};
static uint32_t write_addr = 0x00;
static void w25q_flash_test(void)
{
    w25q_erase_sector(write_addr);
    w25q_write_page(write_addr, test_w25q_write,100);
    sys_delay_ms(2);
    w25q_read_data(write_addr, test_w25q_read,100);
}
void test_node_loop(void)
{
   static uint32_t s;
   
    while(1)
    {
        s++;
        bsp_uart2_send((uint8_t*)&s,sizeof(s));
        bsp_uart1_send((uint8_t*)&s,sizeof(s));
        bsp_get_adc_volt(0,&adc_value[0]);
        bsp_get_adc_volt(1,&adc_value[1]);
        bsp_get_adc_volt(2,&adc_value[2]);
        bsp_get_adc_volt(3,&adc_value[3]);
        bsp_get_adc_volt(4,&adc_value[4]);
        bsp_get_adc_volt(5,&adc_value[5]);
        //printf("adc value %f %f %f %f %f %f \n",adc_value[0],adc_value[1],adc_value[2],
        //                       adc_value[3],adc_value[4],adc_value[5],adc_value[6]);
        //static float value = 0;
        //flashdb_kv_get("spd_max", &value, 4);
        //value = value + 0.1;
        //flashdb_kv_set("spd_max", &value, 4);
        //printf("value %f \n",value);
        w25q_flash_test();
        sys_delay_ms(1000);
    }

}
void test_init(void)
{
    bsp_uart2_init(115200);
    bsp_uart2_install_rx_callback(uart2_read_data);
    bsp_uart1_init(115200);
    bsp_uart1_install_rx_callback(uart1_read_data);
    bsp_task_adc_init();
    bsp_di_incapture_init();
    param_get_init();
    w25q_init();
    //SPI_FLASH_Init();
    static TX_THREAD _thread;
    static uint8_t   _thread_stack[1024];
    tx_thread_create(&_thread,
                     "test_node",
                     test_node_loop,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_TEST,
                     TX_THREAD_PRIORITY_TEST,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);
}