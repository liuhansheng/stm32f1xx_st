#include "board.h"
#include "bsp_incapture.h"
#define BSP_DI_ELOG(...)  do {} while(0);
TIM_HandleTypeDef htim2;
static volatile uint32_t tick_base_htim2;

#pragma pack(1)
typedef struct
{
   GPIO_TypeDef *     gpio; // GPIO address
   uint16_t           pin;  // pin num
   TIM_HandleTypeDef *htim;
   volatile uint32_t *tick_base;
   volatile uint32_t *ccr;
   uint16_t           tim_channel;
   uint16_t           act_channel;
   uint8_t            type;
   uint32_t           tick;
   uint32_t           incapture_value;
   uint32_t           incapture_value_back;
   uint32_t           result;
   uint8_t            state; // IO state
} GPIO_DEFINE_TYPE;
#pragma pack()
#define GPIO_CFG_DI(gpio, pin,type)                                     \
   {                                                                   \
       gpio, pin, NULL, NULL, NULL, 0, 0, type, 0, 0, 0, 0, 0,         \
   }
#define GPIO_CFG_INCAPTURE_INIT(gpio, pin, htim, TIM, channel, type)    \
   {                                                                     \
       gpio, pin, &(htim), &(tick_base_##htim), &(TIM->CCR##channel), TIM_CHANNEL_##channel, HAL_TIM_ACTIVE_CHANNEL_##channel,   \
       type, 0, 0, 0, 0, 0,                                                                                                 \
   }
static GPIO_DEFINE_TYPE bsp_di_map[] = {
   GPIO_CFG_INCAPTURE_INIT(GPIOB, GPIO_PIN_10, htim2, TIM2, 3, GPIO_TYPE_INPUT),
   GPIO_CFG_INCAPTURE_INIT(GPIOB, GPIO_PIN_11, htim2, TIM2, 4, GPIO_TYPE_INPUT),
};

static void bsp_time_incapture(void)
{
   TIM_IC_InitTypeDef sConfigIC = {0};
   sConfigIC.ICPolarity         = TIM_INPUTCHANNELPOLARITY_RISING;
   sConfigIC.ICSelection        = TIM_ICSELECTION_DIRECTTI;
   sConfigIC.ICPrescaler        = TIM_ICPSC_DIV1;
   sConfigIC.ICFilter           = 0;
   for (uint16_t i = 0; i < ARRAY_LEN(bsp_di_map); i++)
   {
       if (bsp_di_map[i].htim != NULL)
       {
           HAL_TIM_IC_ConfigChannel(bsp_di_map[i].htim, &sConfigIC, bsp_di_map[i].tim_channel);
           HAL_TIM_IC_Start_IT(bsp_di_map[i].htim, bsp_di_map[i].tim_channel);
       }
   }
}
static void bsp_tim_init(TIM_HandleTypeDef *htim, TIM_TypeDef *tim)
{

   {
       htim2.Instance = TIM2;
       htim2.Init.Prescaler = INCAPTURE_TIM_PRESCALER;
       htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
       htim2.Init.Period = INCAPTURE_PERIOD;
       htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV4;
       htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
       HAL_TIM_Base_Init(&htim2);  
   }

   {
       TIM_ClockConfigTypeDef sClockSourceConfig = {0};
       sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
       HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig);
       HAL_TIM_IC_Init(&htim2);
   }

   {
       TIM_MasterConfigTypeDef sMasterConfig = {0};
       sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
       sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
       HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig);
   }
   __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
}
static void bsp_io_in_init(void)
{
   GPIO_InitTypeDef GPIO_InitStruct = {0};
   GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11;
   GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
   GPIO_InitStruct.Pull = GPIO_NOPULL;
   HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
}

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim) /** 定时器输入捕获回调函数   */
{
   GPIO_DEFINE_TYPE *io;

   for (uint16_t i = 0; i < ARRAY_LEN(bsp_di_map); i++)
   {
       io = &bsp_di_map[i];
       if (io->htim == NULL)
       {
           continue;
       }
       if (htim->Instance == io->htim->Instance)
       {
           if (htim->Channel == io->act_channel)
           {
               io->incapture_value = (*io->ccr) + ((*io->tick_base) * (INCAPTURE_PERIOD + 1));
               io->tick            = (*io->tick_base);
               if (io->incapture_value >= io->incapture_value_back + INCAPTURE_FITTER_COUNT)
               {
                   io->result               = io->incapture_value - io->incapture_value_back;
                   io->incapture_value_back = io->incapture_value;
                   // printf("io->result %d\n",io->result);
                   return;
               }
           }
       }
   }
}
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) /**定时器五种中断方式  655.35ms 一个tick 定时器回调  */
{
   if (htim->Instance == TIM2)
   {
        tick_base_htim2++;
   }
}

BSP_ERR_CODE_ENUM bsp_get_incapture_value(uint8_t channel, uint32_t *value)
{
   GPIO_DEFINE_TYPE *io;
   if (channel < ARRAY_LEN(bsp_di_map))
   {
       io = &bsp_di_map[channel];

       if (io->type != GPIO_TYPE_INCAPTURE)
       {
           BSP_DI_ELOG("read incapture %d failed, io type no suppot!\r\n", channel);
           return BSP_ERR_NO_SUPPORT;
       }

       if ((*io->tick_base) > io->tick + INCAPTURE_OVER_TICK)
       {
           *value = 0;
           return BSP_ERR_OK;
       }
       else
       {
           *value = io->result;
           return BSP_ERR_OK;
       }
   }
   BSP_DI_ELOG("read incapture %d failed, io index not exist!\r\n", channel);
   return BSP_ERR_INDEX_NOT_EXIST;
}
#define INCAPTURE_CHANNEL_NUM 2
static uint8_t incapture_map[INCAPTURE_CHANNEL_NUM] = {0,1};
BSP_ERR_CODE_ENUM get_incapture_time_us(uint8_t index, uint32_t *value)
{
   BSP_ERR_CODE_ENUM ret;
   if (index < ARRAY_LEN(incapture_map))
   {
       ret      = bsp_get_incapture_value(incapture_map[index], value);
       (*value) = (*value) * INCAPTURE_TICK_TIME_US;
       return ret;
   }
   return BSP_ERR_INDEX_NOT_EXIST;
}
int8_t bsp_read_di(uint8_t n)
{
   GPIO_DEFINE_TYPE *io;
   if (n < ARRAY_LEN(bsp_di_map))
   {
       io        = bsp_di_map + n;
       io->state = HAL_GPIO_ReadPin(io->gpio, io->pin);
       return io->state;
   }
   // DI is not define
   return BSP_ERR_INDEX_NOT_EXIST;
}

void bsp_di_incapture_init()
{
   bsp_io_in_init();
   __HAL_RCC_TIM2_CLK_ENABLE();
   __HAL_AFIO_REMAP_TIM2_PARTIAL_2();
   bsp_tim_init(&htim2, TIM2);
   bsp_time_incapture();
   HAL_NVIC_SetPriority(TIM2_IRQn, 0, 0); // enable IT
   HAL_NVIC_EnableIRQ(TIM2_IRQn);
}

void TIM2_IRQHandler(void)
{
    HAL_TIM_IRQHandler(&htim2);
}
