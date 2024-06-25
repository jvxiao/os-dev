org 0x7c00
bits 16

main:
  mov ah, 0x0e
  ; mov al, 'H'
  ; int 0x10
  ; mov al, 'e'
  ; int 0x10
  ; mov al, 'l',
  ; int 0x10
  ; mov al, 'l'
  ; int 0x10
  ; mov al, 'o'
  ; int 0x10

  ; mov al, the_secret,
  ; int 0x10
  ; mov al, [the_secret],
  ; int 0x10
  ; mov bx , the_secret
  ; add bx , 0x7c00
  ; mov al , [bx]
  ; int 0x10
  ; mov al , [0x7c20]
  ; int 0x10

  jmp $
  hlt

.halt:
  jmp .halt

the_secret:
  db 'X'
string:
  db 'Booting os...', 0

times 510-($-$$) db 0

dw 0AA55h