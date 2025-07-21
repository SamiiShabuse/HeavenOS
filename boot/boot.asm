; Multiboot-compliant header for booting
section .multiboot ; Multiboot header section
   align 4 ; Align to 4-byte boundary
   dd 0x1BADB002 ; Magic number for Multiboot
   dd 0x0 ; Flags (no flags set)
   dd - (0x1BADB002 + 0x0) ; Checksum

section .text ; Code section
global _start ; Entry point for the bootloader

_start: ; Bootloader entry point
   ; Initialize the system, load kernel, etc.
   ; This is where the bootloader logic will go.

   ; For now, we will just halt the CPU
   cli ; Clear interrupts
   call kernel_main ; Call the kernel main function (if defined)
   hlt ; Halt the CPU