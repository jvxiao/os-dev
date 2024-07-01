all:
	nasm -f elf -o callc.o  callc.asm 
	gcc -no-pie -m32 -o callc callc.o test.c 