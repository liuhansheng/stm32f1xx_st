#ifndef __SPI_FLASH_H
#define __SPI_FLASH_H
 
#ifdef __cplusplus
 extern "C" {
#endif
 
#include "main.h"
#include "bsp_spi.h"
 
/* Private typedef ----------------------------------------------------------- */
//#define  sFLASH_ID	0xEF3015 //W25X16
//#define  sFLASH_ID	0xEF4015 //W25Q16
#define  sFLASH_ID		0xEF4017 //W25Q64
//#define  sFLASH_ID	0xEF4018 //W25Q128
 
//#define SPI_FLASH_PageSize            4096
#define SPI_FLASH_PageSize              256
#define SPI_FLASH_PerWritePageSize      256
 
/* Private define ------------------------------------------------------------*/
/* 命令定义-开头*******************************/
#define W25X_WRITE_ENABLE		0x06
#define W25X_WRITE_DISABLE		0x04
#define W25X_READ_STATUS_REG	0x05
#define W25X_WRITE_STATUS_REG	0x01
#define W25X_READ_DATA			0x03
#define W25X_FAST_READ_DATA		0x0B
#define W25X_FAST_READ_DUAL		0x3B
#define W25X_FAST_READ_QUAD		0x6B
#define W25X_PAGE_PROGRAM		0x02
#define W25X_BLOCK_ERASE		0xD8
#define W25X_SECTOR_ERASE		0x20
#define W25X_CHIP_ERASE			0xC7
#define W25X_POWER_DOWN			0xB9
#define W25X_RELEASE_POWER_DOWN	0xAB
#define W25X_DEVICE_ID			0xAB
#define W25X_MANUFACTURER_ID	0x90 
#define W25X_JEDEC_DEVICE_ID	0x9F 
 
#define WIP_Flag	0x01 //Write In Progress (WIP) flag
#define Dummy_Byte	0xFF
/* 命令定义-结尾*******************************/
 
//CS(NSS)引脚
#define FLASH_CS_PIN                     GPIO_PIN_4              
#define FLASH_CS_GPIO_PORT               GPIOA
 
//设置为高电平
#define SPI_FLASH_CS_HIGH()		HAL_GPIO_WritePin(FLASH_CS_GPIO_PORT, FLASH_CS_PIN, GPIO_PIN_SET);
//输出低电平
#define SPI_FLASH_CS_LOW()		HAL_GPIO_WritePin(FLASH_CS_GPIO_PORT, FLASH_CS_PIN, GPIO_PIN_RESET);
 
/*SPI接口定义-结尾****************************/
 
/* 等待超时时间 */
#define SPIT_FLAG_TIMEOUT	((uint32_t)0x1000)
#define SPIT_LONG_TIMEOUT	((uint32_t)(10 * SPIT_FLAG_TIMEOUT))
 
/*信息输出*/
#define FLASH_DEBUG_ON	1
 
#define FLASH_INFO(fmt,arg...)		printf("<<-FLASH-INFO->> "fmt"\n",##arg)
#define FLASH_ERROR(fmt,arg...)		printf("<<-FLASH-ERROR->> "fmt"\n",##arg)
#define FLASH_DEBUG(fmt, arg...)          do{\
											if(FLASH_DEBUG_ON)\
											printf("<<-FLASH-DEBUG->> [%d]"fmt"\n", __LINE__, ##arg);\
                                          } while(0)
 
void SPI_FLASH_Init(void);
void SPI_FLASH_SectorErase(uint32_t SectorAddr);
void SPI_FLASH_BulkErase(void);
void SPI_FLASH_PageWrite(uint8_t *pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void SPI_FLASH_BufferWrite(uint8_t *pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void SPI_FLASH_BufferRead(uint8_t *pBuffer, uint32_t ReadAddr, uint16_t NumByteToRead);
uint32_t SPI_FLASH_ReadID(void);
uint32_t SPI_FLASH_ReadDeviceID(void);
void SPI_FLASH_StartReadSequence(uint32_t ReadAddr);
void SPI_Flash_PowerDown(void);
void SPI_Flash_WAKEUP(void);
uint8_t SPI_FLASH_ReadByte(void);
uint8_t SPI_FLASH_SendByte(uint8_t byte);
uint16_t SPI_FLASH_SendHalfWord(uint16_t HalfWord);
void SPI_FLASH_WriteEnable(void);
void SPI_FLASH_WriteDisable(void);
void SPI_FLASH_WaitForWriteEnd(void);
 
#ifdef __cplusplus
}
#endif
#endif /* __SPI_FLASH_H */