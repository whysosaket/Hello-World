section .data
    msg db 'Hello, World!',0

section .text
    global _start

_start:
    mov eax, 4       ; system call for write
    mov ebx, 1       ; file descriptor 1 is stdout
    mov ecx, msg     ; address of message to write
    mov edx, 13      ; number of bytes to write
    int 0x80         ; invoke system call

    mov eax, 1       ; system call for exit
    xor ebx, ebx     ; exit status is 0
    int 0x80         ; invoke system call
