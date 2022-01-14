#pragma once
#include <stdbool.h>
#include <stdint.h>


#define ARRAY_LEN(x) (sizeof(x) /sizeof((x)[0]))
#define BIT(x) ((uint64_t)1 << (x))

typedef enum
{
    /** 16路adc + 2路 电源检测+温度检测*/
    ADC_01 = 0,
    ADC_02,
    ADC_03,
    ADC_04,
    ADC_05,
    ADC_06,
    ADC_07,
    ADC_08,
    ADC_09,
    ADC_10,
    ADC_11,
    ADC_12,
    ADC_13,
    ADC_14,
    ADC_15,
    ADC_16,
    ADC_BAT_CHECK = 16,
    ADC_TEMP_CHECK,
    ADC_CHANNEL_NUM,
}  adc_map_enum;

#define ADC_FULL 4095
#define EXT_ADC_CHANNEL_VALUE_SIZE (30)                       // 每个通道采集的次数
#define ADC_VOLT_RANG          3.3                            // ADC电压量程
#define ADC_GAIN            3.0                            // 校准电压 

void bsp_task_adc_init(void);
uint8_t bsp_get_adc_volt(uint8_t channel,float *value);