// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "encoding.h"
#include "uart_driver.h"
#include "gpio_driver.h"
#include "timer_driver.h"
#include "delay.h"

#define RAM_SIZE (16*1024)

extern void _init();

void gpio_init(void) {
    GPIO_DIR_SET(0xffffffff); // all output
    GPIO_ENABLE(0xffffffff);
}

void timer_init(void) {
    TIMER0_SET_CMP(8000);
    TIMER0_SET_CTRL(1);
}

void interrupt_init(void) {
    // set_csr(mstatus, 3); // Interrupt Enable (MIE): If set to 1’b1, interrupts are globally enabled.
    // set_csr(mie, 11); // Machine Timer Interrupt Enable (MTIE): If set, irq_timer_i is enabled.
    //

    // Disable the machine & timer interrupts until setup is done.
    clear_csr(mie, MIE_MEIE);
    clear_csr(mie, MIE_MTIE);

    // register_plic_irqs();

    // setup_mtime();
    timer_init();

    // Enable the Machine-External bit in MIE
    set_csr(mie, MIE_MEIE);
    // Enable the Machine-Timer bit in MIE
    set_csr(mie, MIE_MTIE);
    // Enable interrupts in general.
    set_csr(mstatus, MSTATUS_MIE);
}


/*Entry Point for Machine Timer Interrupt Handler*/
void handle_m_time_interrupt() {
    TIMER0_SET_CTRL(0);
    printf("T");
}

/*Entry Point for Machine Timer Interrupt Handler*/
void handle_m_ext_interrupt() {
    TIMER0_SET_CTRL(0);
    printf("U");
}

uint32_t test_data = 0;

int main(int argc, char **argv) {
    // The lowest four bits of the highest byte written to the memory region named
    // "stack" are connected to the LEDs of the board.
    volatile uint32_t *var = (volatile uint32_t *) 0x90000010;

    _init();
    gpio_init();
    // timer_init();
    interrupt_init();

    // printf("U");
    *var = 0x5a;
    GPIO_WRITE(0xaaaaaaaa);


    while (1) {
        // printf("U\n");
        // printf("%d\n", test_data++);
        usleep(1000 * 1000); // 1000 ms (1000 * 1000)
        // *var = ~(*var);
    }
}
