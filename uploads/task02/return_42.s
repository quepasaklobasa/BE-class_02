section .text
    global _start

_start:
    mov     rax, 60     ; syscall: exit
    mov     rdi, 42     ; status: 42
    syscall
