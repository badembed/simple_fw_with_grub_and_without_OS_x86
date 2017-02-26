  MAGIC equ 0x1BADB002
  FLAGS equ 0
  CHECKSUM equ -(MAGIC + FLAGS)

section .multiboot_header
  align 4
  dd MAGIC
  dd FLAGS
  dd CHECKSUM

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
