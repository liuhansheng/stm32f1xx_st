#pragma once

#include <stdbool.h>
#include <stdint.h>

void sys_init(void);

typedef int32_t  timeDelta_t;
typedef uint32_t timeMs_t;
typedef uint64_t timeUs_t;

static inline timeDelta_t cmpTimeUs(timeUs_t a, timeUs_t b)
{
    return (timeDelta_t)(a - b);
}

void sys_delay_us(timeUs_t nUs);
void sys_delay_ms(timeMs_t nMs);

timeUs_t sys_get_us(void);
timeMs_t sys_get_ms(void);