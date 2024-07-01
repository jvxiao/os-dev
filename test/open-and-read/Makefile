.PHONY: all clean

SRC=$(wildcard *.asm)
OBJ=$(SRC:%.asm=%.o)
BIN=$(OBJ:%.o=%)

NASM=nasm
LD = ld 
all: ${BIN}

$(BIN):%:%.o 
	gcc -no-pie -m32 -o $@ $^
#	$(LD) -m elf_i386 -o $@ $^

$(OBJ):%.o:%.asm 
	$(NASM) -f elf -o $@ $^