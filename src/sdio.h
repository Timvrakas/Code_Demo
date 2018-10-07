
#ifndef FUNCTIONS_H_INCLUDED
#define FUNCTIONS_H_INCLUDED

#include <asf.h>
/* ^^ these are the include guards */

/* Prototypes for the functions */
/* Sums two ints */
//! Structure for UART module connected to EDBG (used for unit test output)

//! \name Read/write access configurations
//! @{

//! Offset before the end of memory card to start the test
#define TEST_MEM_START_OFFSET  (1024lu * 1024lu * 4lu) // 4MB

//! Memory area size dedicated for the read/write test
#define TEST_MEM_AREA_SIZE (1024lu * 128lu) // 128KB
/**
 * Size of each read or write access.
 * Increasing this number can get higher R/W performance.
 */
#define TEST_MEM_ACCESS_SIZE  (8lu * SD_MMC_BLOCK_SIZE)

#if TEST_MEM_START_OFFSET < TEST_MEM_AREA_SIZE
#  error TEST_MEM_START_OFFSET must be higher than TEST_MEM_AREA_SIZE
#endif
#if TEST_MEM_ACCESS_SIZE > TEST_MEM_AREA_SIZE
#  error TEST_MEM_AREA_SIZE must be higher than TEST_MEM_ACCESS_SIZE
#endif

//! The value used to generate test data
#define TEST_FILL_VALUE_U32     (0x5500AAFFU)

//! Buffer used by read/write tests
COMPILER_WORD_ALIGNED
static uint8_t buf_test[TEST_MEM_ACCESS_SIZE];

//! @}


static void task_sdio(void * pvParameters);

#endif