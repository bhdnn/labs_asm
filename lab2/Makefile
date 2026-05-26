CC      = arm-none-eabi-gcc
OBJCOPY = arm-none-eabi-objcopy
CFLAGS  = -mcpu=cortex-m4 -mthumb -nostdlib

all: main.elf

main.elf: start.S lscript.ld
	$(CC) $(CFLAGS) -T lscript.ld start.S -o main.elf

clean:
	rm -f *.elf *.bin
