#pragma once
#include <stdbool.h>
#include <stdint.h>

typedef enum
{
    BSP_ERR_OK              = 0,
    BSP_ERR_DATA_OVERWRITE  = -1,
    BSP_ERR_OPERATION       = -2,
    BSP_ERR_INDEX_NOT_EXIST = -3,
    BSP_ERR_OVER_TIME       = -4,
    BSP_ERR_NO_SUPPORT      = -5,
    BSP_ERR_WRITE_FLASH     = -6,
    BSP_ERR_ERASE_FLASH     = -7,
    BSP_ERR_FLASH_ADDR      = -8,
    BSP_ERR_PARAM           = -9,
} BSP_ERR_CODE_ENUM;
typedef enum
{
    DI_01 = 0,
    DI_02,
    DI_03,
    DI_04,
    DI_05,
    DI_06,
    DI_07,
    DI_08,
    DI_09,
    DI_10,
    DI_11,
    DI_12,
    DI_13,
    DI_14,
    DI_15,
    DI_16,
    DI_17,
    DI_18,
    DI_19,
    DI_20,
    DI_21,
    DI_22,
    DI_23,
    DI_24,
    DI_25,
    DI_26,
    DI_27,
    DI_28,
    DI_29,
    DI_30,
    DI_31,
    DI_32,
    DI_CHANNEL_NUM,
} di_map_enum;
#define GPIO_TYPE_INPUT     0
#define GPIO_TYPE_PULLUP    1
#define GPIO_TYPE_PULLDOWN  2
#define GPIO_TYPE_INCAPTURE 3
#define INCAPTURE_TICK_TIME_US   10    /**10us 一个tick */
#define INCAPTURE_TIM_PRESCALER  719      /**  systemclock 72M   10us 一个tick */
#define INCAPTURE_PERIOD         65535    /**  655.35 ms*/
#define INCAPTURE_FITTER_COUNT   100
#define INCAPTURE_OVER_TICK      3
void  bsp_di_incapture_init(void);
int8_t bsp_read_di(uint8_t n);
int8_t bsp_get_incapture_value(uint8_t channel,uint32_t *value); /**风机测速度 */
int8_t get_incapture_time_us(uint8_t index,uint32_t *value); /** */
