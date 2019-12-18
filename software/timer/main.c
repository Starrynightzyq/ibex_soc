// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "uart_driver.h"
#include "gpio_driver.h"
#include "timer_driver.h"
#include "delay.h"

#define RAM_SIZE (16*1024)

void gpio_init(void) {
    GPIO_DIR_SET(0xffffffff); // all output
    GPIO_ENABLE(0xffffffff);
}

void timer_init(void) {
    // TIMER0_SET_TIMER(20);
    TIMER0_SET_CMP(20);
    TIMER0_SET_CTRL(1);
}

uint32_t test_data = 0;

int main(int argc, char **argv) {
    // The lowest four bits of the highest byte written to the memory region named
    // "stack" are connected to the LEDs of the board.
    volatile uint32_t *var = (volatile uint32_t *) 0x90000010;

    uart_init(115200);
    gpio_init();
    timer_init();

    printf("U");
    *var = 0x5a;
    GPIO_WRITE(0xaaaaaaaa);


    while (1) {
        printf("U\n");
        printf("%d\n", test_data++);
        usleep(1000 * 1000); // 1000 ms (1000 * 1000)
        // *var = ~(*var);
    }
}
