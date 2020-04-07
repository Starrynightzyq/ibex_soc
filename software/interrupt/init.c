#include <stdio.h>
#include <string.h>
#include "uart_driver.h"
#include "encoding.h"
#include "platform.h"

extern void trap_entry();

unsigned long get_cpu_freq()
{
	return 20000000;
}

__attribute__((weak)) void handle_m_ext_interrupt()  {};

__attribute__((weak)) void handle_m_time_interrupt()  {};

uintptr_t handle_trap(uintptr_t mcause, uintptr_t epc)
{
	if (0) {
		// External Machine-Level interrupt from PLIC
	} else if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_EXT)) {
		handle_m_ext_interrupt();
		// External Machine-Level interrupt from PLIC
	} else if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_TIMER)) {
		handle_m_time_interrupt();
	}
	else {
		write(1, "trap\n", 5);
		_exit(1 + mcause);
	}
	return epc;
}

void _init()
{
#ifndef NO_INIT
	uart_init(115200);

	printf("Core freq at %d Hz\n", get_cpu_freq());

	write_csr(mtvec, &trap_entry);
#endif

}