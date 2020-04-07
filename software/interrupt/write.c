/* See LICENSE of license details. */

#include <stdint.h>
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>

#include "platform.h"
#include "stub.h"
#include "uart_driver.h"

ssize_t _write(int fd, const void* ptr, size_t len)
{
  const uint8_t * current = (const char *)ptr;

  if (isatty(fd)) {
    for (size_t jj = 0; jj < len; jj++) {
      // while((UART0_REG(UART_REG_STATUS) & MUA_TRANS_READY) == 0x00);
      // UART0_REG(UART_REG_DATAFIFO) = current[jj];
      uart_write(current[jj]);

      if (current[jj] == '\n') {
        // while((UART0_REG(UART_REG_STATUS) & MUA_TRANS_READY) == 0x00);
        // UART0_REG(UART_REG_DATAFIFO) = '\r';
        uart_write('\r');
      }
    }
    return len;
  }

  return _stub(EBADF);
}
