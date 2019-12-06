all: vivado

vivado: 
	mkdir -p ../vivado_build
	rm -rf ../vivado_build/*
	vivado -mode batch -source ./vivado.tcl &

clean:
	rm -rf vivado*.log vivado*.jou
	rm -rf reports
	rm -rf .Xil
	rm -rf .cache
	rm -rf `ls ../rtl/mmcm/* | egrep -v '(../rtl/mmcm/mmcm.xci)'`
	rm -rf ../vivado_build

release: 
	rm -rf ../../ibex_soc.tar.gz
	tar -czf ../../ibex_soc.tar.gz ../../ibex_soc

remote: release
	rm -rf /media/fitz/Samsung_T5/Backup/lowrisc/hardware/ibex_soc.tar.gz
	mv ../../ibex_soc.tar.gz /media/fitz/Samsung_T5/Backup/lowrisc/hardware
	ls -all /media/fitz/Samsung_T5/Backup/lowrisc/hardware