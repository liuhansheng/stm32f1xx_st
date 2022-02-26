/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f1xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f1xx_it.h"
#include "bsp_uart2.h"
#include "bsp_uarts.h"
#include "bsp_uart1.h"
#include "bsp_adc.h"
#include "bsp_spi.h"
#include "bsp_i2c1.h"

void NMI_Handler(void)
{
  while (1)
  {

  }
}

void HardFault_Handler(void)
{

  while (1)
  {

  }
}
void MemManage_Handler(void)
{
  while (1)
  {
  }
}


void BusFault_Handler(void)
{

  while (1)
  {
  }
}

void UsageFault_Handler(void)
{
  while (1)
  {
  }
}

void SVC_Handler(void)
{

}

void DebugMon_Handler(void)
{
}

// /**
//   * @brief This function handles Pendable request for system service.
//   */
// void PendSV_Handler(void)
// {
//   /* USER CODE BEGIN PendSV_IRQn 0 */

//   /* USER CODE END PendSV_IRQn 0 */
//   /* USER CODE BEGIN PendSV_IRQn 1 */

//   /* USER CODE END PendSV_IRQn 1 */
// }

// /**
//   * @brief This function handles System tick timer.
//   */
// void SysTick_Handler(void)
// {
//   /* USER CODE BEGIN SysTick_IRQn 0 */

//   /* USER CODE END SysTick_IRQn 0 */
//   HAL_IncTick();
//   /* USER CODE BEGIN SysTick_IRQn 1 */

//   /* USER CODE END SysTick_IRQn 1 */
// }

/******************************************************************************/
/******************************************************************************/
void USART2_IRQHandler(void)
{
    /** Interrupt handling. */
    HAL_UART_IRQHandler(&huart2);

    if (__HAL_UART_GET_FLAG(&huart2, UART_FLAG_IDLE) != RESET)
    {
        /** Clear idle line interrupt flag. */
        __HAL_UART_CLEAR_IDLEFLAG(&huart2);

        /** 闲时函数回调 */
        bsp_uart2_rx_idle_cb();
    }
}
/**
  * @brief This function handles DMA1 channel6 global interrupt.
  */
void DMA1_Channel6_IRQHandler(void)
{
  HAL_DMA_IRQHandler(huart2.hdmarx);
}

/**
  * @brief This function handles DMA1 channel7 global interrupt.
  */
void DMA1_Channel7_IRQHandler(void)
{
  HAL_DMA_IRQHandler(huart2.hdmatx);
}
/* USER CODE END 1 */
/******************************************************************************/
/******************************************************************************/
void USART1_IRQHandler(void)
{
    /** Interrupt handling. */
    HAL_UART_IRQHandler(&huart1);

    if (__HAL_UART_GET_FLAG(&huart1, UART_FLAG_IDLE) != RESET)
    {
        /** Clear idle line interrupt flag. */
        __HAL_UART_CLEAR_IDLEFLAG(&huart1);

        /** 闲时函数回调 */
        bsp_uart1_rx_idle_cb();
    }
}

/**
  * @brief This function handles DMA1 channel6 global interrupt.
  */
void DMA1_Channel5_IRQHandler(void)
{
    HAL_DMA_IRQHandler(huart1.hdmarx);
}

/**
  * @brief This function handles DMA1 channel7 global interrupt.
  */
void DMA1_Channel4_IRQHandler(void)
{
    HAL_DMA_IRQHandler(huart1.hdmatx);
}

void SPI1_IRQHandler(void)
{
    HAL_SPI_IRQHandler(&hspi1);
}

void I2C1_EV_IRQHandler(void)
{
    HAL_I2C_EV_IRQHandler(&hi2c1);
}
void I2C1_ER_IRQHandler(void)
{
    HAL_I2C_ER_IRQHandler(&hi2c1);
}
/* USER CODE END 1 */
/******************************************************************************/
/******************************************************************************/