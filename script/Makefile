DATE := $(shell /bin/date "+%Y_%m_%d__%H_%M_%S")

.PHONY: all
all: vivado

.PHONY: vivado
vivado: 
	mkdir -p ../vivado_build
	rm -rf ../vivado_build/*
	vivado -mode batch -source ./vivado.tcl &

.PHONY: clean
clean:
	rm -rf vivado*.log vivado*.jou
	rm -rf reports
	rm -rf .Xil
	rm -rf .cache
	rm -rf `ls ../rtl/mmcm/* | egrep -v '(../rtl/mmcm/mmcm.xci)'`
	rm -rf ../vivado_build

.PHONY: release
release: 
	tar -czf ../../ibex_soc_$(DATE).tar.gz ../../ibex_soc

.PHONY: remote
remote: release
	mv ../../ibex_soc_$(DATE).tar.gz /media/fitz/Samsung_T5/Backup/lowrisc/hardware
	ls -all /media/fitz/Samsung_T5/Backup/lowrisc/hardware

.PHONY: show
show:
	echo $(DATE)
	echo ibex_soc_$(DATE).tar.gz

.PHONY: clean_backup
	rm -rf ../../ibex_soc*.tar.gz
	rm -rf /media/fitz/Samsung_T5/Backup/lowrisc/hardware/ibex_soc*.tar.gz