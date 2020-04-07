#ifndef TRIMER_DRIVER_H
#define TRIMER_DRIVER_H

#include <stdint.h>

#define TIMER_REG_TIMER         0x00 // w/r
#define TIMER_REG_TIMER_CTRL    0x04 // w/r
#define TIMER_REG_CMP           0x08 // w/r

uint32_t TIMER0_SET_TIMER(uint32_t data);
uint32_t TIMER0_SET_CTRL(uint32_t data);
uint32_t TIMER0_SET_CMP(uint32_t data);

uint32_t TIMER0_GET_TIMER(uint32_t data);
uint32_t TIMER0_GET_CTRL(uint32_t data);
uint32_t TIMER0_GET_CMP(uint32_t data);

#endif