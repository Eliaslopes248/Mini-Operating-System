; THIS MODULE LOADS THE DISK AND IS BIOS-FACING

; DEFINE DATA
    global _main
    section .data
start_up_msg: db "Welcome to my OS", 10 ; 19 bytes

; PROGRAM
    section .text

; ENTRY POINT
_main:
    jmp boot_up_msg ; SHOW BOOT UP MESSAGE

; BOOT UP HELLO MESSGAE
boot_up_msg:
    mov     rax, 0x2000004              ; macOS syscall number
    mov     rdi, 1                      ; fd for write
    lea     rsi, [rel start_up_msg]     ; address of string message
    mov     rdx, 19                     ; length: "Hello NASM" (10) + newline (1) = 11 bytes
    syscall

    mov     rax, 0x2000001              ; System call number for exit (1 + 0x2000000 offset)
    mov     rdi, 0                      ; Exit success status (0)
    syscall                             ; Invoke the kernel





