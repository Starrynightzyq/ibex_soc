// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#include "gpio_driver.h"
#define CLK_FIXED_FREQ_HZ (20ULL * 1000 * 1000)
#define RAM_SIZE (16*1024)

/**
 * Delay loop executing within 8 cycles on ibex
 */

// static void delay_loop_ibex(unsigned long loops) {
//   int out; /* only to notify compiler of modifications to |loops| */
//   asm volatile(
//       "1: nop             \n" // 1 cycle
//       "   nop             \n" // 1 cycle
//       "   nop             \n" // 1 cycle
//       "   nop             \n" // 1 cycle
//       "   addi %1, %1, -1 \n" // 1 cycle
//       "   bnez %1, 1b     \n" // 3 cycles
//       : "=&r" (out)
//       : "0" (loops)
//   );
// }

// static int usleep_ibex(unsigned long usec) {
//   unsigned long usec_cycles;
//   usec_cycles = CLK_FIXED_FREQ_HZ * usec / 1000 / 1000 / 8;

//   delay_loop_ibex(usec_cycles);
//   return 0;
// }

// static int usleep(unsigned long usec) {
//   return usleep_ibex(usec);
// }

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

  
static uint32_t *GPIO_BASE_ADDR = (uint32_t *) 0x02000000;
uint32_t test_data = 0x11223344;

int main(int argc, char **argv) {
  // The lowest four bits of the highest byte written to the memory region named
  // "stack" are connected to the LEDs of the board.
  volatile uint32_t *var = (volatile uint32_t *) 0x90000010;
  *var = 0x0a;

  *(var+1) = test_data;

  uint32_t loacl_data = 0x12345678;

  *(var+2) = loacl_data;

  test_data += loacl_data;

  *(var+3) = test_data;

  // test_data+=1;

  // *var = test_data;

  // usleep(1);

  // GPIO_DIR_SET(GPIO_BASE_ADDR, 0xffffffff); // all output
  // GPIO_ENABLE(GPIO_BASE_ADDR, 0xffffffff);
  // GPIO_WRITE(GPIO_BASE_ADDR, test_data);
  // test_data = test_data+1;
  // GPIO_WRITE(GPIO_BASE_ADDR, test_data);
  // *var = GPIO_READ(GPIO_BASE_ADDR);

  while (1) {
    // usleep(1); // 1000 ms (1000 * 1000)
    // *var = ~(*var);
  }
}
