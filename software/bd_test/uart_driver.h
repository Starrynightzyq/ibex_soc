#include <stdint.h>

#define UART_REG_RXFIFO           0x00
#define UART_REG_TXFIFO           0x04
#define UART_REG_STAT             0x08
#define UART_REG_CTRL             0x0C

void uart_rst_tx_fifo(void);
void uart_rst_rx_fifo(void);
void uart_en_intr(void);

uint32_t uart_rx_fifo_valid(void);
uint32_t uart_rx_fifo_full(void);
uint32_t uart_tx_fifo_empty(void);
uint32_t uart_tx_fifo_full(void);
uint32_t uart_intr_enabled(void);
uint32_t uart_Overrun_Error(void);
uint32_t uart_Frame_Error(void);
uint32_t uart_Parity_Error(void);

void uart_write(uint8_t data);
uint32_t uart_read(void);
