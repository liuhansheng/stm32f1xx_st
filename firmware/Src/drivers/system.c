#include "system.h"
#include "board.h"

#include "tx_api.h"

static void SystemClock_Config(void)
{
    /** Enable Power Control clock. */
    __HAL_RCC_PWR_CLK_ENABLE();

    /** Configure the main internal regulator output voltage. */
    __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    /** Enable HSE Oscillator and activate PLL with HSE as source */
    RCC_OscInitTypeDef RCC_OscInitStruct = {0};
    RCC_OscInitStruct.OscillatorType     = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState           = RCC_HSE_ON;
    RCC_OscInitStruct.PLL.PLLState       = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource      = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLM           = 8;
    RCC_OscInitStruct.PLL.PLLN           = 168;
    RCC_OscInitStruct.PLL.PLLP           = RCC_PLLP_DIV2;
    RCC_OscInitStruct.PLL.PLLQ           = 7;

    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
    {
        Error_Handler();
    }

    /** Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 clocks dividers */
    RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
    RCC_ClkInitStruct.ClockType =
        (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
    RCC_ClkInitStruct.SYSCLKSource   = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider  = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
    {
        Error_Handler();
    }
}

void sys_init(void)
{
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