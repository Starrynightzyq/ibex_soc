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

void GPIO_DIR_SET(uint32_t *BASE_ADDR, uint32_t DIR) {
  *(BASE_ADDR+0x00) = DIR;
}

void GPIO_ENABLE(uint32_t *BASE_ADDR, uint32_t ENABLE_BIT) {
  *(BASE_ADDR+0x01) = ENABLE_BIT;
}

uint32_t GPIO_READ(uint32_t *BASE_ADDR) {
  return *(BASE_ADDR+0x02);
}

void GPIO_WRITE(uint32_t *BASE_ADDR, uint32_t WRITE_DATE) {
  *(BASE_ADDR+0x03) = WRITE_DATE;
}

static uint32_t *GPIO_BASE_ADDR = (uint32_t *) 0x02000000;

int main(int argc, char **argv) {
  // The lowest four bits of the highest byte written to the memory region named
  // "stack" are connected to the LEDs of the board.
  volatile uint32_t *var = (volatile uint32_t *) 0x80000010;
  *var = 0x0a;

  // usleep(1);

  GPIO_DIR_SET(GPIO_BASE_ADDR, 0xffffffff); // all output
  GPIO_ENABLE(GPIO_BASE_ADDR, 0xffffffff);
  GPIO_WRITE(GPIO_BASE_ADDR, 0x12345678);
  *var = GPIO_READ(GPIO_BASE_ADDR);

  while (1) {
    // usleep(1); // 1000 ms (1000 * 1000)
    // *var = ~(*var);
  }
}
