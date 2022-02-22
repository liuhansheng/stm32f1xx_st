#include "param.h"
#include "fdb_port.h"

enum {
    MAV_PARAM_TYPE_UINT8 = 0,
    MAV_PARAM_TYPE_INT8,
    MAV_PARAM_TYPE_UINT16,
    MAV_PARAM_TYPE_INT16,
    MAV_PARAM_TYPE_UINT32,
    MAV_PARAM_TYPE_INT32,
    MAV_PARAM_TYPE_UINT64,
    MAV_PARAM_TYPE_INT64,
    MAV_PARAM_TYPE_REAL32,
    MAV_PARAM_TYPE_REAL64,
    MAV_PARAM_TYPE_COUNT,
};
const uint8_t type_size[] = {
    [MAV_PARAM_TYPE_UINT8]  = sizeof(uint8_t),
    [MAV_PARAM_TYPE_INT8]   = sizeof(int8_t),
    [MAV_PARAM_TYPE_UINT16] = sizeof(uint16_t),
    [MAV_PARAM_TYPE_INT16]  = sizeof(int16_t),
    [MAV_PARAM_TYPE_UINT32] = sizeof(uint32_t),
    [MAV_PARAM_TYPE_INT32]  = sizeof(int32_t),
    [MAV_PARAM_TYPE_UINT64] = sizeof(uint64_t),
    [MAV_PARAM_TYPE_INT64]  = sizeof(int64_t),
    [MAV_PARAM_TYPE_REAL32] = sizeof(float),
    [MAV_PARAM_TYPE_REAL64] = sizeof(double),
};
typedef union
{
    uint8_t  uint8;
    int8_t   int8;
    uint16_t uint16;
    int16_t  int16;
    uint32_t uint32;
    int32_t  int32;
    uint64_t uint64;
    int64_t  int64;
    float    real32;
    double   real64;
} param_value_container_t;

typedef struct
{
    const char             *key;           /** 参数名称 */
    uint8_t                 type;          /** 参数类型 */
    param_value_container_t default_value; /** 默认值 */
    param_value_container_t min_value;     /** 最小值 */
    param_value_container_t max_value;     /** 最大值 */
    bool                    verfier;       /** 是否需要边界校验 */
} param_tbl_t;
enum {
    spd_max_e = 0,
    spd_min_e,
};
static param_tbl_t param_tbl[] = {
    [spd_max_e] = {
    .key = "spd_max",
    .type = MAV_PARAM_TYPE_REAL32,
    .default_value.real32 = 2,
    .verfier = false,
},
    [spd_min_e] = {
    .key = "spd_min",
    .type = MAV_PARAM_TYPE_REAL32,
    .default_value.real32 = 0,
    .verfier = false,
},
};
static int kv_get(const char *key, void *value, uint8_t value_len, uint8_t *actual_len)
{
    *actual_len = flashdb_kv_get(key, value, value_len);

    return 0;
}

static int kv_set(const char *key, void *value, uint8_t value_len)
{
    if (FDB_NO_ERR == flashdb_kv_set(key, value, value_len))
    {
        return 0;
    }

    return -1;
}
static uint8_t boot_count = 5;
static struct fdb_default_kv_node default_kv_table[] = {{"boot_count", &boot_count, sizeof(boot_count)}};
static struct fdb_default_kv default_kv;
void param_init(void)
{
    default_kv.kvs = default_kv_table;
    default_kv.num = ARRAY_LEN(default_kv_table);
    flashdb_init(&default_kv);
    uint8_t                 actual_len;
    param_value_container_t value;
    value.uint32 = 0;
    for(int i = 0; i < ARRAY_LEN(param_tbl); i++)
    {
        if( (0 != kv_get(param_tbl[i].key,&value,type_size[param_tbl[i].type],&actual_len)) || (actual_len != type_size[param_tbl[i].type]) )
        {
            kv_set(param_tbl[i].key,&param_tbl[i].default_value,type_size[param_tbl[i].type]);
        }
    }


}