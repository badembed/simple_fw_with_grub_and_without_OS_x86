  MAGIC equ 0xe85250d6
  ARCH equ 0                    ; protected mode i386
  HEADER_LEN equ 24
  CHECKSUM equ 0x100000000 -(MAGIC + ARCH + HEADER_LEN)
  TYPE equ 0
  FLAGS equ 0
  TAG_SIZE equ 8

section .multiboot_header
  align 4
  dd MAGIC
  dd ARCH
  dd HEADER_LEN
  dd CHECKSUM
  dw TYPE
  dw FLAGS
  dd TAG_SIZE

section .bss
  align 4
stack_bottom:
  resb 16384
stack_top:

section .text
  global start
  extern main
start:
  mov esp, stack_top
  call main
  cli
hang:
  hlt
  jmp hang
