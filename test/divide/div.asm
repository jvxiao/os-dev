section .data

section .text
global _start

_start:
  MOV ax, 11
  MOV bx, 2
  DIV bx
  