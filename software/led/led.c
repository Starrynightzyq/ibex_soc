// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#define CLK_FIXED_FREQ_HZ (20ULL * 1000 * 1000)
#define RAM_SIZE (16*1024)

/**
 * Delay loop executing within 8 cycles on ibex
 */
static void delay_loop_ibex(unsigned long loops) {
  int out; /* only to notify compiler of modifications to |loops| */
  asm volatile(
      "1: nop             \n" // 1 cycle
      "   nop             \n" // 1 cycle
      "   nop             \n" // 1 cycle
      "   nop             \n" // 1 cycle
      "   addi %1, %1, -1 \n" // 1 cycle
      "   bnez %1, 1b     \n" // 3 cycles
      : "=&r" (out)
      : "0" (loops)
  );
}

static int usleep_ibex(unsigned long usec) {
  unsigned long usec_cycles;
  usec_cycles = CLK_FIXED_FREQ_HZ * usec / 1000 / 1000 / 8;

  delay_loop_ibex(usec_cycles);
  return 0;
}

static int usleep(unsigned long usec) {
  return usleep_ibex(usec);
}

void ram_test_byte(uint8_t test_data) {
  uint8_t read_data;
  int error_times = 0;

  volatile uint8_t *RAM_START = (volatile uint8_t *) 0x80000000;

  for (int i = 0; i < (RAM_SIZE/4); i++)
  {
    *(RAM_START+i) = test_data;
  }
  for (int i = 0; i < (RAM_SIZE/4); i++)
  {
    read_data = *(RAM_START+i);
    if (read_data != test_data)
    {
      error_times++;
    }
  }
  *RAM_START = error_times;
}

void ram_test_word(int test_data) {
  int read_data;
  int error_times = 0;

  volatile uint8_t *RAM_START = (volatile uint8_t *) 0x80000000;

  for (int i = 0; i < (RAM_SIZE/4); i++)
  {
    *(RAM_START+i) = test_data;
  }
  for (int i = 0; i < (RAM_SIZE/4); i++)
  {
    read_data = *(RAM_START+i);
    if (read_data != test_data)
    {
      error_times++;
    }
  }
  *RAM_START = error_times;
}

// global variable
uint32_t global_var_32 = 0x87654321;
uint8_t global_var_16 = 0x8642;
uint32_t global_array_32[4] = {100, 200, 300, 400};

int main(int argc, char **argv) {
  // The lowest four bits of the highest byte written to the memory region named
  // "stack" are connected to the LEDs of the board.
  volatile uint32_t *var = (volatile uint32_t *) 0x80000010;
  *var = 0x0a;

  uint32_t test_data = 0x12345678;


  uint32_t local_var_32 = 0x11223344;
  uint8_t local_var_16 = 0x2244;
  uint32_t local_array_32[4] = {600, 800, 1000, 1200};

  // ram_test_word(0xa5);
  
  *(var+1) = test_data;

  *(var+2) = global_array_32;
  // *(var+12) = global_var_16;
  // *(var+16) = 

  while (1) {
    // usleep(1); // 1000 ms (1000 * 1000)
    // *var = ~(*var);
  }
}
