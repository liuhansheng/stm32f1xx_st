#pragma once

#include "flashdb.h"

void flashdb_init(struct fdb_default_kv *default_kv);

int       flashdb_kv_get(const char *key, void *value, uint32_t size);
fdb_err_t flashdb_kv_set(const char *key, void *value, uint32_t size);