#include <stdlib.h>
#include <stdio.h>
#include "board.h"
#include "flashdb.h"
#include "main.h"

enum {
    spd_max_e = 0,
    spd_min_e,
    str_max_e,
    str_min_e,
    param_index_count_e,
};
void param_init(void);
void param_get_value(char *key,void *value);
void param_set_value(char *key, void *value);
char* param_get_key_from_index(uint8_t index);

#define param_get_value_by_group(group, name, p_value)                                  \
    do                                                                                  \
    {                                                                                   \
        if (NULL != (p_value))                                                          \
        {                                                                               \
            param_get_value(param_get_key_from_index(group##_##name##_e), (p_value));   \
        }                                                                               \
    } while (0)