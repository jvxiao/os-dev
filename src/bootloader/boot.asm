org 0x7c00
bits 16

%define ENDL 0x0d, 0x0a

;
; FAT 12 header
;
jmp short start
nop

bdb_oem:                    db 'MSWIN4.1'   ;8 bytes
bdb_bytes_per_sector:       dw 512
bdb_sectors_per_cluster:    db 1
bdb_reserved_sectors:       dw 1
bdb_fat_count:              db 2
bdb_dir_entries_count:      dw 0e0h
bdb_total_sectors:          dw 2880         ; 2880 * 514 = 1.44MB
bdb_media_secriptor_type:   db 0f0h         ; F0 = 3.5" floppy disk
bdb_sectors_per_fat:        dw 9
bdb_sectors_per_track:      dw 18
bdb_heads:                  dw 2
bdb_hidden_sectors:         dd 0
bdb_large_sector_count:     dd 0

; extended boot record
ebr_drive_number:           db 0            ; 0x00 floppy, 0x80 hdd
                            db 0            ; reserved
ebr_signature:              db 29h
ebr_volume_id:              db 12h, 34h, 56h,78h
ebr_volume_label:           db '          ' ; 11bytes, padded with spaces
ebr_system_id:              db 'FAT12   '   ; 8bytes
start:
  jmp main

;print some string to the screen
;params:
;  -ds:si point to the string

puts:
  push si
  push ax

.loop:
  lodsb         ; loads next character to al
  or al, al     ; verify if next character is null
  jz .done

  mov ah, 0x0e  ; call bios interrupt
  int 0x10

  jmp .loop

.done:
  pop ax
  pop si
  ret

main:
  ; setup data semgment 
  mov ax, 0
  mov ds, ax
  mov es, ax

  ; setup stack
  mov ss, ax
  mov sp, 0x7C00

  mov si, msg_hello
  call puts

  hlt

.halt:
  jmp .halt

msg_hello: db 'Hello worlld', ENDL, 0

times 510-($-$$) db 0
dw 0AA55h