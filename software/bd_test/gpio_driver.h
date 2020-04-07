#include <stdint.h>

#define GPIO_REG_DATA  0x00
#define GPIO_REG_TRI   0x04
#define GPIO2_REG_DATA 0x08
#define GPIO2_REG_TRI  0x0C
#define GPIO_REG_GIER  0x11C
#define GPIO_REG_IER   0x128
#define GPIO_REG_ISR   0x120

uint32_t GPIO_DIR_SET(uint32_t DIR);
uint32_t GPIO_READ(void);
uint32_t GPIO_WRITE(uint32_t WRITE_DATA);