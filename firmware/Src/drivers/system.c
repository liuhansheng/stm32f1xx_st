#include "system.h"
#include "board.h"

#include "tx_api.h"

void SystemClock_Config(void)
{
    __HAL_RCC_PWR_CLK_ENABLE();
    
    /** Configure the main internal regulator output voltage. */
    // __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
    RCC_OscInitTypeDef RCC_OscInitStruct = {0};
    RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

    /** Initializes the RCC Oscillators according to the specified parameters
     * in the RCC_OscInitTypeDef structure.
     */
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState = RCC_HSE_ON;
    RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
    RCC_OscInitStruct.HSIState = RCC_HSI_ON;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
    {
        Error_Handler();
    }
    /** Initializes the CPU, AHB and APB buses clocks
     */
    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                                |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
    {
        Error_Handler();
    }
    
    RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};
    PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
    PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV6;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

void sys_init(void)
{
    __enable_irq();
    HAL_Init();

    SystemClock_Config();
}

void sys_delay_us(timeUs_t nUs)
{
    uint32_t start, now, delta, reload, us_tick;

    start   = SysTick->VAL;
    reload  = SysTick->LOAD;
    us_tick = SystemCoreClock / 1000000UL;

    do
    {
        now   = SysTick->VAL;
        delta = start > now ? start - now : reload + start - now;
    }
    while (delta < us_tick * nUs);
}

void sys_delay_ms(timeMs_t nMs)
{
    tx_thread_sleep(nMs);
}

timeUs_t sys_get_us(void)
{   
    return sys_get_ms() * 1000 + (SysTick->LOAD - SysTick->VAL) * 1000 / SysTick->LOAD; 
}

timeMs_t sys_get_ms(void)
{
    return tx_time_get();
}

uint32_t HAL_GetTick(void)
{
    return tx_time_get();
}

void HAL_Delay(uint32_t Delay)
{
    tx_thread_sleep(Delay);
}