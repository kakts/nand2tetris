.PHONY: run-sim
run-sim:
	tools/HardwareSimulator.sh

.PHONY: run-asm
run-asm:
	tools/Assembler.sh

.PHONY: run-cpu
run-cpu:
	tools/CPUEmulator.sh