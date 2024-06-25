
data: data.o
	ld -m elf_i386 -o data data.o
data.o: data.asm
	nasm -f elf -o data.o data.asm

