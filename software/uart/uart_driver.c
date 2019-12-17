#include "uart_driver.h"
#include "platform.h"

uint32_t uart_init(uint32_t baud_rate) {
	uint32_t baud_reg = 0;
	baud_reg = UART_REF_CLK/8/baud_rate - 1;
	// baud_reg = 5;
	UART0_REG(UART_REG_BAUD) = baud_reg; // (ref_clk/baud_rate/8)-1 baud_rate = 115200
	UART0_REG(UART_REG_CTRL) = 0x01; // enable tx interrupt and rx interrupt
	
	return baud_reg;
}

uint8_t uart_write(uint8_t data) {
	while((UART0_REG(UART_REG_STATUS) & MUA_TRANS_READY) == 0x00);
	UART0_REG(UART_REG_DATAFIFO) = data;

	return data;
}

uint8_t uart_read(void) {
	while((UART0_REG(UART_REG_STATUS) & MUA_REC_HAS_DATA) == 0x00);

	return UART0_REG(UART_REG_DATAFIFO);
}
