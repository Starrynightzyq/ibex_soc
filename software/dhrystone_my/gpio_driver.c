#include "gpio_driver.h"
#include "platform.h"

uint32_t GPIO_DIR_SET(uint32_t DIR) {
  GPIO_REG(GPIO_REG_DIR) = DIR;
  return DIR;
}

uint32_t GPIO_ENABLE(uint32_t ENABLE_BIT) {
  GPIO_REG(GPIO_REG_EN) = ENABLE_BIT;
  return ENABLE_BIT;
}

uint32_t GPIO_READ(void) {
  return GPIO_REG(GPIO_REG_RD);
}

uint32_t GPIO_WRITE(uint32_t WRITE_DATE) {
  GPIO_REG(GPIO_REG_WR) = WRITE_DATE;
  return WRITE_DATE;
}