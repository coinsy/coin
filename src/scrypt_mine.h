#ifndef SCRYPT_MINE_H
#define SCRYPT_MINE_H

#include <stdint.h>
#include <stdlib.h>

#include "util.h"
#include "net.h"

void *scrypt_buffer_alloc();
void scrypt_buffer_free(void *scratchpad);

unsigned int scanhash_scrypt(void *pdata, void *scratchbuf,
    uint32_t max_nonce, uint32_t &hash_count,
    void *result, void *res_header);

void scrypt_hash(const void* input, size_t inputlen, uint32_t *res, void *scratchpad);

#endif // SCRYPT_MINE_H
