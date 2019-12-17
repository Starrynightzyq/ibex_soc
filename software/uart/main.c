// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "uart_driver.h"
#include "delay.h"

#define RAM_SIZE (16*1024)


// void ram_test_word(int test_data) {
//   int read_data;
//   int error_times = 0;

//   volatile uint8_t *RAM_START = (volatile uint8_t *) 0x80000000;

//   for (int i = 0; i < (RAM_SIZE/4); i++)
//   {
//     *(RAM_START+i) = test_data;
//   }
//   for (int i = 0; i < (RAM_SIZE/4); i++)
//   {
//     read_data = *(RAM_START+i);
//     if (read_data != test_data)
//     {
//       error_times++;
//     }
//   }
//   *RAM_START = error_times;
// }

  
// static uint32_t *UART_BASE_ADDR = (uint32_t *) 0x02000000;
uint32_t test_data = 0;
// uint32_t test_data_1 = 0x22345678;
// uint32_t test_data_2 = 0x32345678;

int main(int argc, char **argv) {
  // The lowest four bits of the highest byte written to the memory region named
  // "stack" are connected to the LEDs of the board.
  volatile uint32_t *var = (volatile uint32_t *) 0x90000010;
  // uint8_t uart_read_data;
  // *var = 0x5a;
  // *(var+1) = (test_data+1);
  // test_data += test_data_1;
  // *(var+2) = test_data;
  // *(var+3) = test_data_2;

  // UART0_REG(0) = test_data;
  
  uart_init(115200);
  // uart_write(0x00);
  // uart_read_data = uart_read();
  // *var++ = uart_read_data;

  // uart_write(0xff);
  // uart_read_data = uart_read();
  // *var++ = uart_read_data;

  printf("U");
  *var = 0x5a;


  while (1) {
    printf("U\n");
    printf("%d\n", test_data++);
    usleep(1000*1000); // 1000 ms (1000 * 1000)
    // *var = ~(*var);
  }
}
