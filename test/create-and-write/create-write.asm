section .data
  pathname dd "/mnt/d/workspace/projects/os-dev/test/create-and-write/test.txt"
  toWrite dd "put some words here!",0AH, 0DH, "$"
section .text
global _start:

_start:
  MOV eax, 5
  MOV ebx, pathname
  MOV ecx, 101o
  MOV edx, 700o
  INT 80h

  MOV ebx, eax,
  MOV eax, 4,
  MOV ecx, toWrite
  MOV edx, 30
  INT 80h

  MOV eax, 1
  MOV ebx, 0
  INT 80h