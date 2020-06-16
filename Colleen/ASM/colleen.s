section .text
global main
extern printf,_gets
main:
;push prompt
mov rdi,prompt
mov rax, 0
call printf

section .bss
name resb 1024

section .data
prompt db "Name", 0
result db "Hello, %s!", 0