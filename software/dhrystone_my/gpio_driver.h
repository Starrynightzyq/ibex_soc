#include <stdint.h>

#define GPIO_REG_DIR 0x00
#define GPIO_REG_EN  0x04
#define GPIO_REG_RD  0x08
#define GPIO_REG_WR  0x0c

uint32_t GPIO_DIR_SET(uint32_t DIR);

uint32_t GPIO_ENABLE(uint32_t ENABLE_BIT);

uint32_t GPIO_READ(void);

uint32_t GPIO_WRITE(uint32_t WRITE_DATE);