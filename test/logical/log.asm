
section .text
global _start

_start:
  MOV ax, 0b1010
  MOV bx, 0b1101
  AND ax, bx

  MOV ax, 0b0101
  MOV bx, 0b1010
  OR ax, bx

  MOV al, 0b1010
  NOT al
  AND eax, 0x0000000F

  INT 80h