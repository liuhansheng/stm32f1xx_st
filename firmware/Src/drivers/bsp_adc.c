#include "bsp_adc.h"
#include "board.h"

typedef struct 
{
    GPIO_TypeDef *gpio;
    uint16_t pin;
    uint8_t adc_channel;
    uint16_t value[EXT_ADC_CHANNEL_VALUE_SIZE];
    uint16_t result;
    float    volt;
}bsp_adc_channel_t;
#define ADC_CHANNEL_CFG(gpio,pin,channel)       \
    {                                           \
        gpio,pin,ADC_CHANNEL_##channel,{0},0,0  \
    }
typedef struct 
{
    ADC_HandleTypeDef hadc;
    ADC_TypeDef *adc;
    bsp_adc_channel_t * channel;
    uint8_t             channel_num;
    uint16_t            dma_value_size;
    uint16_t    *       dma_buff;
}bsp_adc_t;

static uint16_t adc1_dma_buff_data[6 * EXT_ADC_CHANNEL_VALUE_SIZE];

#define ADC_CFG(adc,channel,dma_buff)                                                                   \
    {                                                                                                   \
        {0},adc,channel,ARRAY_LEN(channel),ARRAY_LEN(channel) *EXT_ADC_CHANNEL_VALUE_SIZE,dma_buff,     \
    }
static bsp_adc_channel_t bsp_adc_channel_map[] = {
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_0,10),
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_1,11),
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_2,12),
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_3,13),
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_4,14),
    ADC_CHANNEL_CFG(GPIOC,GPIO_PIN_5,15),
};
static bsp_adc_t bsp_adc_map[] = {
    ADC_CFG(ADC1,bsp_adc_channel_map,adc1_dma_buff_data)
};

static void bsp_adc_io_init(bsp_adc_t *adc)
{
    __HAL_RCC_GPIOC_CLK_ENABLE();
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    for(uint16_t i = 0; i < adc->channel_num; i ++)
    {
        GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        GPIO_InitStruct.Pin  = adc->channel[i].pin;
        HAL_GPIO_Init(adc->channel[i].gpio, &GPIO_InitStruct);
    }
}
static void bsp_adc_channel_init(bsp_adc_t *adc)
{
    ADC_ChannelConfTypeDef sConfig = {0};
    for (uint8_t i = 0; i < adc->channel_num; i++)
    {
        sConfig.Channel      = adc->channel[i].adc_channel;
        sConfig.Rank         = i + 1;
        sConfig.SamplingTime = ADC_SAMPLETIME_55CYCLES_5;

        if (HAL_ADC_ConfigChannel(&adc->hadc, &sConfig) != HAL_OK)
        {
            Error_Handler();
        }
    }
}

static void bsp_adc_init(bsp_adc_t *adc)
{
    adc->hadc.Instance = ADC1;
    adc->hadc.Init.ScanConvMode = ADC_SCAN_ENABLE;
    adc->hadc.Init.ContinuousConvMode = ENABLE;
    adc->hadc.Init.DiscontinuousConvMode = DISABLE;
    adc->hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
    adc->hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
    adc->hadc.Init.NbrOfConversion = 6;
    adc->hadc.Init.NbrOfDiscConversion = 0; 
    if (HAL_ADC_Init(&(adc->hadc)) != HAL_OK)
    {
        Error_Handler();
    }
}
static void bsp_adc_dma_init(bsp_adc_t *adc)
{
    if(adc->adc == ADC1)
    {
        __HAL_RCC_DMA1_CLK_ENABLE(); 
        static DMA_HandleTypeDef hdma_adc1;

        hdma_adc1.Instance = DMA1_Channel1;
        hdma_adc1.Init.Direction = DMA_PERIPH_TO_MEMORY;
        hdma_adc1.Init.PeriphInc = DMA_PINC_DISABLE;
        hdma_adc1.Init.MemInc = DMA_MINC_ENABLE;
        hdma_adc1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
        hdma_adc1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
        hdma_adc1.Init.Mode = DMA_CIRCULAR;
        hdma_adc1.Init.Priority = DMA_PRIORITY_HIGH;
        HAL_DMA_Init(&hdma_adc1);

        /* Associate the initialized DMA handle to the the UART handle */
        __HAL_LINKDMA(&adc->hadc, DMA_Handle, hdma_adc1);
    }
}
uint16_t average_filter(volatile uint16_t *arr, uint16_t len)
{
    uint16_t max = arr[0], min = arr[0];
    uint32_t result = 0;
    for (uint16_t i = 0; i < len; i++)
    {
        if (max < arr[i])
        {
            max = arr[i];
        }
        if (min > arr[i])
        {
            min = arr[i];
        }
        result += arr[i];
    }
    return (result - max - min) / (len - 2);
}
static uint16_t bubbleSort(uint16_t *arr, uint16_t num)
{
    return average_filter(arr, num);
}
void bsp_adc_get_result(bsp_adc_t* adc,uint16_t channel)
{
    uint8_t index = channel;
    for(uint16_t j = 0; j < EXT_ADC_CHANNEL_VALUE_SIZE; j++)
    {
        adc->channel[index].value[j] = adc->dma_buff[j * adc->channel_num + index];
    }
    adc->channel[index].result = bubbleSort(adc->channel[index].value,EXT_ADC_CHANNEL_VALUE_SIZE);
    adc->channel[index].volt = ADC_VOLT_RANG *((float)adc->channel[index].result / ADC_FULL);
}
uint8_t bsp_get_adc_volt(uint8_t channel,float *value)
{
    uint8_t index = channel;
    for (uint8_t i = 0; i < ARRAY_LEN(bsp_adc_map); i++)
    {
        if (index < bsp_adc_map[i].channel_num)
        {
            bsp_adc_get_result(&bsp_adc_map[i], index);
            *value = bsp_adc_map[i].channel[index].volt;
            return 0;
        }
        index -= bsp_adc_map[i].channel_num;
    }
    return 0;
}

void bsp_task_adc_init(void)
{
    __HAL_RCC_ADC1_CLK_ENABLE();
    for(uint8_t i = 0; i < ARRAY_LEN(bsp_adc_map); i ++)
    {
        bsp_adc_io_init(&bsp_adc_map[i]);
        bsp_adc_init(&bsp_adc_map[i]);
        bsp_adc_dma_init(&bsp_adc_map[i]);
        bsp_adc_channel_init(&bsp_adc_map[i]);
        HAL_ADCEx_Calibration_Start(&bsp_adc_map[i].hadc);
        HAL_ADC_Start_DMA(&bsp_adc_map[i].hadc, (uint32_t *)bsp_adc_map[i].dma_buff, bsp_adc_map[i].dma_value_size);
    }
}