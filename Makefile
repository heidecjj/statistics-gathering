
CC=riscv64-unknown-linux-gnu-g++
CFLAGS=-O2
LDFLAGS=

hpm_counters: hpm_counters.cxx Makefile
	$(CC) $(CFLAGS) -o $@ $@.cxx
	riscv64-unknown-linux-gnu-objdump --disassemble-all $@ > $@.dump

clean:
	rm -f hpm_counters *.o *.dump

.PHONY: run clean
