section .data
    msg db "/bin/sh", 0

section .text
    global _start

_start:
    mov eax, 11         ; syscall execve
    lea ebx, [msg]      ; ptr "/bin/sh"
    xor ecx, ecx        ; argv = NULL
    xor edx, edx        ; envp = NULL
    int 0x80            ; syscall

    ; if execve fails
    mov eax, 1
    xor ebx, ebx
    int 0x80

