#include "uart_driver.h"
#include "platform.h"

void uart_rst_tx_fifo(void) {
	uint32_t ctrl_reg = 0;
	ctrl_reg = UART0_REG(UART_REG_CTRL);
	ctrl_reg = ctrl_reg | 0x01;
	UART0_REG(UART_REG_CTRL) = ctrl_reg;
}

void uart_rst_rx_fifo(void) {
	uint32_t ctrl_reg = 0;
	ctrl_reg = UART0_REG(UART_REG_CTRL);
	ctrl_reg = ctrl_reg | 0x02;
	UART0_REG(UART_REG_CTRL) = ctrl_reg;
}

void uart_en_intr(void) {
	uint32_t ctrl_reg = 0;
	ctrl_reg = UART0_REG(UART_REG_CTRL);
	ctrl_reg = ctrl_reg | 0x08;
	UART0_REG(UART_REG_CTRL) = ctrl_reg;
}

uint32_t uart_rx_fifo_valid(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 0) & 0x0001);
}

uint32_t uart_rx_fifo_full(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 1) & 0x0001);
}

uint32_t uart_tx_fifo_empty(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 2) & 0x0001);
}

uint32_t uart_tx_fifo_full(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 3) & 0x0001);
}

uint32_t uart_intr_enabled(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 4) & 0x0001);
}

uint32_t uart_Overrun_Error(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 5) & 0x0001);
}

uint32_t uart_Frame_Error(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 6) & 0x0001);
}

uint32_t uart_Parity_Error(void) {
	uint32_t stat_reg = 0;
	stat_reg = UART0_REG(UART_REG_STAT);
	return ((stat_reg >> 6) & 0x0001);
}

void uart_write(uint8_t data) {
	uint32_t data_tmp = 0;
	data_tmp = data_tmp | data;
	while(uart_tx_fifo_full());
	UART0_REG(UART_REG_TXFIFO) = data_tmp;
}

uint32_t uart_read(void) {
	while(uart_rx_fifo_valid() == 0);
	return UART0_REG(UART_REG_RXFIFO);
}
