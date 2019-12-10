#include "gpio_driver.h"

void GPIO_DIR_SET(uint32_t *BASE_ADDR, uint32_t DIR) {
  *(BASE_ADDR+0x00) = DIR;
}

void GPIO_ENABLE(uint32_t *BASE_ADDR, uint32_t ENABLE_BIT) {
  *(BASE_ADDR+0x01) = ENABLE_BIT;
}

uint32_t GPIO_READ(uint32_t *BASE_ADDR) {
  return *(BASE_ADDR+0x02);
}

void GPIO_WRITE(uint32_t *BASE_ADDR, uint32_t WRITE_DATE) {
  *(BASE_ADDR+0x03) = WRITE_DATE;
}