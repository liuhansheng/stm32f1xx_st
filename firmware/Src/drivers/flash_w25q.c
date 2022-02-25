#include "bsp_spi.h"
#include "system.h"
#include "flash_w25q.h"
#include "board.h"
#include "debug.h"

/**
 * W25Q64 容量为8M字节, 共有128个Block, 2048个Sector
 * 1 Block = 16 Sectors
 * 1 Sector = 16 Pages = 4096 Bytes
 * 1 Pages = 256 Bytes
 */

// W25Q64 Page size and Sector size
#define W25X_PAGE_SIZE   256
#define W25X_SECTOR_SIZE 4096

#define SPI_NSS_HIGH();  HAL_GPIO_WritePin(GPIOA,GPIO_PIN_4,GPIO_PIN_SET);
#define SPI_NSS_LOW();   HAL_GPIO_WritePin(GPIOA,GPIO_PIN_4,GPIO_PIN_RESET);

#define W25Q_ENABLE_WRITE()                                                 \
    SPI_NSS_LOW();                                                          \
    bsp_spi1_transfer_byte(W25X_WriteEnable)                                \
    SPI_NSS_HIGH();
#define W25Q_DISABLE_WRITE()                                                \
    SPI_NSS_LOW();                                                          \
    bsp_spi1_transfer_byte(W25X_WriteDisable)                               \
    SPI_NSS_HIGH();

/** 等待空闲 */
static void w25q_wait_for_ready(void)
{
    uint8_t status = 1; /** busy 为1 空闲为 0 */
    uint32_t tick = sys_get_ms();
    do
    {
        if(sys_get_ms() >= (tick + 2000))
        {
            printf("waitint time over tick: %d sys: %d\n",tick,sys_get_ms());
            return;
        }
        SPI_NSS_LOW();      
        bsp_spi1_transfer_byte(W25X_ReadStatusReg1);
        bsp_spi1_transfer(NULL, &status, 1);
        SPI_NSS_HIGH();
    }while ((status & 0x01) == 0x01);
}

static bool w25q_detect_flash_chip(void)
{
    uint8_t id[2] = {0};
    SPI_NSS_LOW();
    uint8_t addr_zero[3] = {0};
    bsp_spi1_transfer_byte(W25X_ManufactDeviceID);
    bsp_spi1_transfer(addr_zero,NULL,3);
    bsp_spi1_transfer(NULL, id,2);
    SPI_NSS_HIGH();
    const uint16_t chip_id = (id[0] << 8) | id[1];
    printf("chip_id: %x",chip_id);
    /**
     * 0XEF13, 表示芯片型号为 W25Q80
     * 0XEF14, 表示芯片型号为 W25Q16
     * 0XEF15, 表示芯片型号为 W25Q32
     * 0XEF16, 表示芯片型号为 W25Q64
     * 0XEF17, 表示芯片型号为 W25Q128
     * 0XEF18, 表示芯片型号为 W25Q256
     */
    switch (chip_id)
    {
    case 0XEF16:
        return true;

    default:
        return false;
    }
}

bool w25q_init(void)
{
    bsp_spi1_init();

    return w25q_detect_flash_chip();
}

/** 擦除一个 4KB 的扇区 */
void w25q_erase_sector(uint32_t erase_addr)
{
    W25Q_ENABLE_WRITE();
    w25q_wait_for_ready();
    SPI_NSS_LOW();
    bsp_spi1_transfer_byte(W25X_SectorErase);
    bsp_spi1_transfer((uint8_t *)(&erase_addr),NULL, 3);
    SPI_NSS_HIGH();
    w25q_wait_for_ready();
    SPI_NSS_HIGH();
}

/** 读取 FLASH 数据 */
bool w25q_read_data(uint32_t read_addr, uint8_t *buffer, uint32_t read_size)
{
    SPI_NSS_LOW();
    w25q_wait_for_ready();
    bsp_spi1_transfer_byte(W25X_ReadData);
    bsp_spi1_transfer((uint8_t *)(&read_addr),NULL,3);
    bsp_spi1_transfer(NULL,buffer,read_size);
    SPI_NSS_HIGH();
    return true;
}

/** 在指定地址开始写入最大一页的数据 */
void w25q_write_page(uint32_t write_addr, uint8_t *buffer, uint32_t write_size)
{
    write_size =( (write_size < W25X_PAGE_SIZE) ? write_size : W25X_PAGE_SIZE);
    W25Q_ENABLE_WRITE();
    SPI_NSS_LOW();
    w25q_wait_for_ready();
    bsp_spi1_transfer_byte(W25X_PageProgram);
    bsp_spi1_transfer((uint8_t *)(&write_addr),NULL,3);
    bsp_spi1_transfer(buffer,NULL,write_size);
    w25q_wait_for_ready();
    SPI_NSS_HIGH();
}