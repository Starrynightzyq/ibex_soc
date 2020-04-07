# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# Generate a baremetal application

PROGRAM ?= bd_test
PROGRAM_CFLAGS = -Wall -g -Os
ARCH = rv32imc
# ARCH = rv32im # to disable compressed instructions

# Makefile 的路径
PROGRAM_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

# 包含项目目录下的所有 .c .h .s 文件
PROGRAM_SRCS = $(wildcard $(PROGRAM_DIR)/*.c $(PROGRAM_DIR)/*.h $(PROGRAM_DIR)/*.S)

# 包含项目目录下的所有 .s 文件，包括启动文件
# CRT ?= crt0.S

# 链接脚本
LINKER_SCRIPT ?= $(PROGRAM_DIR)/link.ld

# 编译工具
RISCV_PATH ?= /home/fitz/FPGA/Project/ibex_soc/riscv-tools/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14
RISCV_TOOLS_VERSION ?= riscv64-unknown-elf
CC = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-gcc
OBJCOPY = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-objcopy
OBJDUMP = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-objdump

# OBJCOPY ?= $(subst gcc,objcopy,$(wordlist 1,1,$(CC)))
# OBJDUMP ?= $(subst gcc,objdump,$(wordlist 1,1,$(CC)))

LIBWRAP_SYMS := write


CFLAGS += -g
CFLAGS += -march=$(ARCH)
CFLAGS += -mabi=ilp32
# CFLAGS += -static
CFLAGS += -mcmodel=medany
# CFLAGS += -fvisibility=hidden
CFLAGS += -nostartfiles
CFLAGS +=   -ffunction-sections -fdata-sections -fno-common
# ifeq ($(REPLACE_PRINTF),1) 
CFLAGS +=   -fno-builtin-printf -fno-builtin-malloc 
# endif
CFLAGS += $(PROGRAM_CFLAGS)

# CFLAGS ?= -march=$(ARCH) -mabi=ilp32 -static -mcmodel=medany \
# 	-fvisibility=hidden -nostdlib -nostartfiles $(PROGRAM_CFLAGS)

# LDFLAGS += $(foreach s,$(LIBWRAP_SYMS),-Wl,--wrap=$(s))
LDFLAGS += --specs=nano.specs 
# LDFLAGS += -u _printf_float # 使用浮点printf
LDFLAGS += -Wl,--wrap=malloc -Wl,--wrap=printf 

# .o 文件
PROGRAM_OBJS := $(patsubst %.c,%.o,$(wildcard $(PROGRAM_DIR)/*.c)) $(patsubst %.S,%.o,$(wildcard $(PROGRAM_DIR)/*.S))
PROGRAM_DEPS = $(PROGRAM_OBJS:%.o=%.d)

OUTFILES = $(PROGRAM).elf $(PROGRAM).vmem $(PROGRAM).bin $(PROGRAM).dis

all: clean $(OUTFILES) show
	python2 $(PROGRAM_DIR)/mem2coe.py -i $(PROGRAM)
	cp $(PROGRAM).coe $(PROGRAM_DIR)/../../rtl/instr_rom_init/instr_rom_init.coe

$(PROGRAM).elf: $(PROGRAM_OBJS) $(LINKER_SCRIPT)
	$(CC) $(CFLAGS) -T $(LINKER_SCRIPT) $(PROGRAM_OBJS) -o $@ $(LDFLAGS)

%.dis: %.elf
	$(OBJDUMP) -SD $^ > $@

# Note: this target requires the srecord package to be installed.
# XXX: This could be replaced by objcopy once
# https://sourceware.org/bugzilla/show_bug.cgi?id=19921
# is widely available.
# XXX: Currently the start address 0x00000000 is hardcoded. It could/should be
# read from the elf file, but is lost in the bin file.
# Switching to objcopy will resolve that as well.
%.vmem: %.bin
	srec_cat $^ -binary -offset 0x00000000 -byte-swap 4 -o $@ -vmem
# 	cp $(PROGRAM).vmem ../../rtl/instr_rom_init/instr_rom_init.coe

%.bin: %.elf
	$(OBJCOPY) -O binary $^ $@

%.o: %.c
	$(CC) $(CFLAGS) -MMD -c $(INCS) -o $@ $<

%.o: %.S
	$(CC) $(CFLAGS) -MMD -c $(INCS) -o $@ $<

clean:
	$(RM) -f *.o *.d

clean_all: clean
	$(RM) -f $(OUTFILES) *.coe

show:
	@echo PROGRAM_DIR:   $(PROGRAM_DIR)
	@echo PROGRAM_SRCS:  $(notdir $(PROGRAM_SRCS))
	@echo LINKER_SCRIPT: $(notdir $(LINKER_SCRIPT))
	@echo PROGRAM_OBJS:  $(notdir $(PROGRAM_OBJS))
	size $(PROGRAM).elf