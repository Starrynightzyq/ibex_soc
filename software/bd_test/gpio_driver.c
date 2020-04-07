#include "gpio_driver.h"
#include "platform.h"

/**
 * gpio channel 1 direction setting
 * @author zhouyuqian
 * @datetime 2020-03-27T16:50:34+0800
 * @param    DIR                      0 represents output, 1 represents input
 * @return                            direction
 */
uint32_t GPIO_DIR_SET(uint32_t DIR) {
  GPIO_REG(GPIO_REG_TRI) = DIR;
  return DIR;
}

/**
 * read data from gpio channel 1
 * @author zhouyuqian
 * @datetime 2020-03-27T16:54:19+0800
 * @return                            read data
 */
uint32_t GPIO_READ(void) {
  return GPIO_REG(GPIO_REG_DATA);
}

/**
 * write data to gpio channel 1
 * @author zhouyuqian
 * @datetime 2020-03-27T16:53:03+0800
 * @param    WRITE_DATA               write data
 * @return                            write data
 */
uint32_t GPIO_WRITE(uint32_t WRITE_DATA) {
  GPIO_REG(GPIO_REG_DATA) = WRITE_DATA;
  return WRITE_DATA;
}