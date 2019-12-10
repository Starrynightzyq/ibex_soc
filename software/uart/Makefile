# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# Generate a baremetal application

PROGRAM ?= uart
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
RISCV_TOOLS_VERSION ?= riscv64-unknown-elf
CC = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-gcc
OBJCOPY = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-objcopy
OBJDUMP = $(RISCV_PATH)/bin/$(RISCV_TOOLS_VERSION)-objdump

# OBJCOPY ?= $(subst gcc,objcopy,$(wordlist 1,1,$(CC)))
# OBJDUMP ?= $(subst gcc,objdump,$(wordlist 1,1,$(CC)))


CFLAGS ?= -march=$(ARCH) -mabi=ilp32 -static -mcmodel=medany \
	-fvisibility=hidden -nostdlib -nostartfiles $(PROGRAM_CFLAGS)

# .o 文件
PROGRAM_OBJS := $(patsubst %.c,%.o,$(wildcard $(PROGRAM_DIR)/*.c)) $(patsubst %.S,%.o,$(wildcard $(PROGRAM_DIR)/*.S))
PROGRAM_DEPS = $(PROGRAM_OBJS:%.o=%.d)

OUTFILES = $(PROGRAM).elf $(PROGRAM).vmem $(PROGRAM).bin $(PROGRAM).dis

all: clean $(OUTFILES) show

$(PROGRAM).elf: $(PROGRAM_OBJS) $(LINKER_SCRIPT)
	$(CC) $(CFLAGS) -T $(LINKER_SCRIPT) $(PROGRAM_OBJS) -o $@ $(LIBS)

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

%.bin: %.elf
	$(OBJCOPY) -O binary $^ $@

%.o: %.c
	$(CC) $(CFLAGS) -MMD -c $(INCS) -o $@ $<

%.o: %.S
	$(CC) $(CFLAGS) -MMD -c $(INCS) -o $@ $<

clean:
	$(RM) -f *.o *.d

clean_all: clean
	$(RM) -f $(OUTFILES)

show:
	@echo PROGRAM_DIR:   $(PROGRAM_DIR)
	@echo PROGRAM_SRCS:  $(notdir $(PROGRAM_SRCS))
	@echo LINKER_SCRIPT: $(notdir $(LINKER_SCRIPT))
	@echo PROGRAM_OBJS:  $(notdir $(PROGRAM_OBJS))
	size $(PROGRAM).elf