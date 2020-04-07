#include <stdint.h>

#define UART_REF_CLK 921600

#define UART_REG_DATAFIFO         0x00 // w/r
#define UART_REG_BAUD             0x04 // w/r
#define UART_REG_STATUS           0x08 // r
#define UART_REG_CTRL             0x08 // w

#define MUA_TRANS_READY           0x00000004 // Transmitter busy(0)
#define MUA_REC_HAS_DATA          0x00000001 // Receiver OK(0)

uint32_t uart_init(uint32_t baud_rate);
uint8_t uart_write(uint8_t data);
uint8_t uart_read(void);