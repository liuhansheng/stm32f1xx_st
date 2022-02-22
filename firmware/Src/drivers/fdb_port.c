#include "tx_api.h"
#include "fdb_port.h"

/* KVDB object */
static struct fdb_kvdb kvdb = {0};

static TX_MUTEX fdb_mutex;

static void lock(fdb_db_t db)
{
    (void)db;

    tx_mutex_get(&fdb_mutex, TX_WAIT_FOREVER);
}

static void unlock(fdb_db_t db)
{
    (void)db;

    tx_mutex_put(&fdb_mutex);
}

int flashdb_kv_get(const char *key, void *value, uint32_t size)
{
    struct fdb_blob blob;
    fdb_kv_get_blob(&kvdb, key, fdb_blob_make(&blob, value, size));

    if (blob.saved.len > 0)
    {
        FDB_INFO("get the %s value finish len:%d\n", key, blob.saved.len);
    }
    else
    {
        FDB_INFO("get the %s value failed\n", key);
    }

    return blob.saved.len;
}

fdb_err_t flashdb_kv_set(const char *key, void *value, uint32_t size)
{
    struct fdb_blob blob;

    fdb_err_t result = fdb_kv_set_blob(&kvdb, key, fdb_blob_make(&blob, value, size));

    if (result == FDB_NO_ERR)
    {
        FDB_INFO("set the %s value finish\n", key);
    }
    else
    {
        FDB_INFO("set the %s value failed,%d\n", key, result);
    }

    return result;
}

void flashdb_init(struct fdb_default_kv *default_kv)
{
    tx_mutex_create(&fdb_mutex, "fdb", 0);

    /* set the lock and unlock function if you want */
    fdb_kvdb_control(&kvdb, FDB_KVDB_CTRL_SET_LOCK, (void *)lock);
    fdb_kvdb_control(&kvdb, FDB_KVDB_CTRL_SET_UNLOCK, (void *)unlock);

    /* Key-Value database initialization
     *
     *       &kvdb: database object
     *       "env": database name
     * "fdb_kvdb": The flash partition name base on FAL. Please make sure it's in FAL partition table.
     *              Please change to YOUR partition name.
     * &default_kv: The default KV nodes. It will auto add to KVDB when first initialize successfully.
     *        NULL: The user data if you need, now is empty.
     */
    const fdb_err_t result = fdb_kvdb_init(&kvdb, "hx", "fdb_kvdb", default_kv, NULL);

    if (result != FDB_NO_ERR)
    {
        FDB_INFO("fdb_kvdb_init error\r\n");
    }
}