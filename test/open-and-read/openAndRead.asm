; system call table: https://faculty.nps.edu/cseagle/assembly/sys_call.html

section .data
  pathname dd "/mnt/d/workspace/projects/os-dev/test/open-and-read/test.txt"
section .bss
  buffer resb 1024

section .text
global main:

main: 
  MOV eax, 5         ; int code          
  MOV ebx, pathname  ; pathname
  MOV ecx, 0;        ; mode 0:readonly
  INT 80h            ; the file descripter is in eax

  MOV ebx, eax       ; move the file disriptor to ebx
  MOV eax, 3         ; int code
  MOV ecx, buffer    ; 
  MOV edx, 1024      ; size to read
  INT 80h

  MOV eax, 1
  MOV ebx, 0
  INT 80h
