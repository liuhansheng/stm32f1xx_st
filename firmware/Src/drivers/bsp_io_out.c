#include "bsp_io_out.h"
#include "board.h"


#define OUTPUT_TYPE_PP 0
#define OUTPUT_TYPE_OD 1

#define BSP_ADC_ELOG(...) \
    do                    \
    {                     \
    } while (0)
typedef struct
{
    GPIO_TypeDef *gpio;  // GPIO address
    uint16_t      pin;   // pin num
    uint8_t       state; // IO state
    uint8_t       type;
} GPIO_DEFINE_TYPE;

// IO MAP
static GPIO_DEFINE_TYPE bsp_do_map[] = {
    // DO 0
    {GPIOF, GPIO_PIN_2, 0, OUTPUT_TYPE_PP},
    {GPIOF, GPIO_PIN_1, 0, OUTPUT_TYPE_PP},
    {GPIOF, GPIO_PIN_0, 0, OUTPUT_TYPE_PP},
    {GPIOE, GPIO_PIN_4, 0, OUTPUT_TYPE_PP},
    {GPIOE, GPIO_PIN_3, 0, OUTPUT_TYPE_PP},
    {GPIOE, GPIO_PIN_2, 0, OUTPUT_TYPE_PP},
    {GPIOE, GPIO_PIN_1, 0, OUTPUT_TYPE_PP},
    {GPIOE, GPIO_PIN_0, 0, OUTPUT_TYPE_PP},
    // DO 8
    {GPIOB, GPIO_PIN_9, 0, OUTPUT_TYPE_PP},
    {GPIOB, GPIO_PIN_8, 0, OUTPUT_TYPE_PP},
    {GPIOB, GPIO_PIN_7, 0, OUTPUT_TYPE_PP},
    {GPIOB, GPIO_PIN_6, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_15, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_13, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_12, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_11, 0, OUTPUT_TYPE_PP},
    // DO 16
    {GPIOG, GPIO_PIN_10, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_7, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_4, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_3, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_2, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_1, 0, OUTPUT_TYPE_PP},
    {GPIOD, GPIO_PIN_0, 0, OUTPUT_TYPE_PP},
    {GPIOC, GPIO_PIN_12, 0, OUTPUT_TYPE_PP},
    // DO 24
    {GPIOC, GPIO_PIN_11, 0, OUTPUT_TYPE_PP},
    {GPIOC, GPIO_PIN_10, 0, OUTPUT_TYPE_PP},
    {GPIOA, GPIO_PIN_8, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_8, 0, OUTPUT_TYPE_PP},
    {GPIOG, GPIO_PIN_7, 0, OUTPUT_TYPE_PP},

    // DO 31
    {GPIOC, GPIO_PIN_13, 0, OUTPUT_TYPE_PP}, // DO_LED_BLUE
    {GPIOC, GPIO_PIN_14, 0, OUTPUT_TYPE_PP}, // DO_LED_GREEN
    {GPIOC, GPIO_PIN_15, 0, OUTPUT_TYPE_PP}, // DO_LED_RED
};

static BSP_ERR_CODE_ENUM bsp_io_out_config(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Speed            = GPIO_SPEED_FREQ_VERY_HIGH;
    for (uint16_t i = 0; i < ARRAY_LEN(bsp_do_map); i++)
    {
        if (i < DO_LED_BLUE)
        {
            // bsp_do_map[i].type = flash_data.cfg.data.digital_out_pin_config[i];
        }
        if (bsp_do_map[i].type == OUTPUT_TYPE_PP)
        {
            GPIO_InitStruct.Pull = GPIO_PULLUP;
            GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
        }
        else
        {
            GPIO_InitStruct.Pull = GPIO_PULLUP;
            GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
        }

        GPIO_InitStruct.Pin = bsp_do_map[i].pin;
        HAL_GPIO_Init(bsp_do_map[i].gpio, &GPIO_InitStruct);
    }

    return BSP_ERR_OK;
}

BSP_ERR_CODE_ENUM bsp_write_do(uint8_t n, uint8_t state)
{
    GPIO_DEFINE_TYPE *io;

    if (n < ARRAY_LEN(bsp_do_map))
    {
        io        = bsp_do_map + n;
        io->state = state;
        HAL_GPIO_WritePin(io->gpio, io->pin, (GPIO_PinState)state);
        return BSP_ERR_OK;
    }
    BSP_DO_ELOG("write do %d failed\r\n", n);
    return BSP_ERR_INDEX_NOT_EXIST;
}

void bsp_write_do_toggle(uint8_t n)
{
    GPIO_DEFINE_TYPE *io;

    if (n < ARRAY_LEN(bsp_do_map))
    {
        io        = bsp_do_map + n;
        io->state = !io->state;
        HAL_GPIO_WritePin(io->gpio, io->pin, (GPIO_PinState)io->state);
        return;
    }
    BSP_DO_ELOG("write do %d toggle failed\r\n", n);
}

int bsp_read_do(uint8_t n)
{
    GPIO_DEFINE_TYPE *io;

    if (n < ARRAY_LEN(bsp_do_map))
    {
        io = bsp_do_map + n;
        return io->state;
    }

    // DO is not define
    return BSP_ERR_INDEX_NOT_EXIST;
}

void bsp_io_out_init(void)
{
    bsp_io_out_config();
    BSP_DO_ELOG("BSP DO INIT FINISH!\r\n");

    // 待定
    // for (uint8_t i = DO_01; i < DO_LED_BLUE; i++)
    //{
    //    if (flash_data.cfg.data.default_digital_pin_out & BIT(i))
    //    {
    //        bsp_write_do(i, ENABLE);
    //    }
    //    else
    //    {
    //        bsp_write_do(i, DISABLE);
    //    }
    //}
}