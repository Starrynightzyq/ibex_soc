#include <stdint.h>

void GPIO_DIR_SET(uint32_t *BASE_ADDR, uint32_t DIR);

void GPIO_ENABLE(uint32_t *BASE_ADDR, uint32_t ENABLE_BIT);

uint32_t GPIO_READ(uint32_t *BASE_ADDR);

void GPIO_WRITE(uint32_t *BASE_ADDR, uint32_t WRITE_DATE);