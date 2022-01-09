#include "bsp_io_out.h"
#include "board.h"


#define OUTPUT_TYPE_PP 0
#define OUTPUT_TYPE_OD 1

#define BSP_ADC_ELOG(...) \
    do                    \
    {                     \
    } while (0)

#define ARRAY_LEN(x) (sizeof(x) / sizeof((x)[0]))
typedef struct
{
    GPIO_TypeDef *gpio;  // GPIO address
    uint16_t      pin;   // pin num
    uint8_t       state; // IO state
    uint8_t       type;
} GPIO_DEFINE_TYPE;

// IO MAP
static GPIO_DEFINE_TYPE bsp_do_map[] = {
    {GPIOB, GPIO_PIN_5, 0, OUTPUT_TYPE_PP}, // DO_LED_RED
    {GPIOB, GPIO_PIN_0, 0, OUTPUT_TYPE_PP}, // DO_LED_GREEN
    {GPIOB, GPIO_PIN_1, 0, OUTPUT_TYPE_PP}, // DO_LED_BLUE
};

static void bsp_io_out_config(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Speed            = GPIO_SPEED_FREQ_HIGH;
    for (uint16_t i = 0; i < ARRAY_LEN(bsp_do_map); i++)
    {
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

}

void bsp_write_do(uint8_t n, uint8_t state)
{
    GPIO_DEFINE_TYPE *io;

    if (n < ARRAY_LEN(bsp_do_map))
    {
        io        = bsp_do_map + n;
        io->state = state;
        HAL_GPIO_WritePin(io->gpio, io->pin, (GPIO_PinState)state);
    }

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
}

int bsp_read_do(uint8_t n)
{
    GPIO_DEFINE_TYPE *io;

    if (n < ARRAY_LEN(bsp_do_map))
    {
        io = bsp_do_map + n;
        return io->state;
    }
    return 0;
}

void bsp_io_out_init(void)
{
    bsp_io_out_config();
}

