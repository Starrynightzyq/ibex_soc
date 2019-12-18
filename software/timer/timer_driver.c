#include "timer_driver.h"
#include "platform.h"

uint32_t TIMER0_SET_TIMER(uint32_t data) {
	TIMER0_REG(TIMER_REG_TIMER) = data;
	return data;
}

uint32_t TIMER0_SET_CTRL(uint32_t data) {
	TIMER0_REG(TIMER_REG_TIMER_CTRL) = data;
	return data;
}

uint32_t TIMER0_SET_CMP(uint32_t data) {
	TIMER0_REG(TIMER_REG_CMP) = data;
	return data;
}

uint32_t TIMER0_GET_TIMER(uint32_t data) {
	return TIMER0_REG(TIMER_REG_TIMER);
}

uint32_t TIMER0_GET_CTRL(uint32_t data) {
	return TIMER0_REG(TIMER_REG_TIMER_CTRL);
}

uint32_t TIMER0_GET_CMP(uint32_t data) {
	return TIMER0_REG(TIMER_REG_CMP);
}