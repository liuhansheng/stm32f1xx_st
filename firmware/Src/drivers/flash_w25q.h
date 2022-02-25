#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

// W25QX chip ID
#define W25Q80  0XEF13
#define W25Q16  0XEF14
#define W25Q32  0XEF15
#define W25Q64  0XEF16
#define W25Q128 0XEF17
#define W25Q256 0XEF18

// W25X instruction list
#define W25X_WriteEnable      0x06
#define W25X_WriteDisable     0x04
#define W25X_ReadStatusReg1   0x05
#define W25X_ReadStatusReg2   0x35
#define W25X_ReadStatusReg3   0x15
#define W25X_WriteStatusReg1  0x01
#define W25X_WriteStatusReg2  0x31
#define W25X_WriteStatusReg3  0x11
#define W25X_ReadData         0x03
#define W25X_FastReadData     0x0B
#define W25X_FastReadDual     0x3B
#define W25X_FastReadQuad     0x6B
#define W25X_PageProgram      0x02
#define W25X_QuadPageProgram  0x32
#define W25X_BlockErase       0xD8
#define W25X_SectorErase      0x20
#define W25X_ChipErase        0xC7
#define W25X_PowerDown        0xB9
#define W25X_ReleasePowerDown 0xAB
#define W25X_DeviceID         0xAB
#define W25X_ManufactDeviceID 0x90
#define W25X_JedecDeviceID    0x9F
#define W25X_Enable4ByteAddr  0xB7
#define W25X_Exit4ByteAddr    0xE9
#define W25X_SetReadParam     0xC0
#define W25X_EnterQPIMode     0x38
#define W25X_ExitQPIMode      0xFF

bool w25q_init(void);
void w25q_erase_sector(uint32_t erase_addr);
bool w25q_read_data(uint32_t read_addr, uint8_t *buffer, uint32_t read_size);
void w25q_write_page(uint32_t write_addr, uint8_t *buffer, uint32_t write_size);