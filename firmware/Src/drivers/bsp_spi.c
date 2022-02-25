#include "board.h"
#include "bsp_spi.h"
#include "main.h"
SPI_HandleTypeDef hspi1;
void bsp_spi1_init(void)
{
    hspi1.Instance = SPI1;
    hspi1.Init.Mode = SPI_MODE_MASTER;
    hspi1.Init.Direction = SPI_DIRECTION_2LINES;
    hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
    hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
    hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
    hspi1.Init.NSS = SPI_NSS_SOFT;
    hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
    hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
    hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
    hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
    hspi1.Init.CRCPolynomial = 10;
    if (HAL_SPI_Init(&hspi1) != HAL_OK);
}
void bsp_spi1_transfer(uint8_t * tx_data,uint8_t * rx_data,uint8_t length)
{
    if(tx_data == NULL)
    {
        HAL_SPI_Receive(&hspi1, rx_data, length, 100);//接收数据
    }
    else if(rx_data == NULL)
    {
        HAL_SPI_Transmit(&hspi1, tx_data, length, 100);//发送数据
    }
    else
    {
        HAL_SPI_TransmitReceive(&hspi1,tx_data,rx_data,length,100);
    }
}
void bsp_spi1_transfer_byte(uint8_t tx_byte)
{
    uint8_t in;
    bsp_spi1_transfer(&tx_byte,&in,1);
}