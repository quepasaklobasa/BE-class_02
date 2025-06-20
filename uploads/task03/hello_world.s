section .data
    msg db "Hello World!", 0xA   ; 0xA = '\n'
    len equ $ - msg              ; message length

section .text
    global _start

_start:
    ; write syscall: write(1, msg, len)
    mov     rax, 1               ;  write syscall
    mov     rdi, 1               ; fd 1 = STDOUT
    mov     rsi, msg             ; pointer to message
    mov     rdx, len             ; message len
    syscall

    ; exit syscall: exit(4242)
    mov     rax, 60              ; exit syscall num
    mov     rdi, 4242            ; exit code
    syscall
