section .text
global _start

addTwo:                 
  PUSH ebp              ; now the stack looks like below
  MOV ebp, esp          ;    |               |
  MOV eax, [ebp + 8]    ;    |               |
  MOV ebx, [ebp + 12]   ;    |     ebp       |    4bytes
  ADD eax, ebx          ;    | return address|    4bytes
  POP ebp               ;    |      1        |    4bytes
  RET                   ;    |______4________|    4bytes         

_start:
  PUSH 4
  PUSH 1
  CALL addTwo
  INT 80h