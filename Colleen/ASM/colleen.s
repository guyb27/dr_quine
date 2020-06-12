;Hello world!
section .text
global main
extern printf
main:
push rbp;Hello world!
;mov rbp, rsp
;jmp print
;print:
mov rdi, buff
;mov rsi, endl
;mov rdx, buff
;mov r10, quote
mov rax, 0
call printf
pop rbp
ret
section .data

a: dq 5
fmt: db "a=%ld, rax=%ld", 10, 0

buff db "OK", 0
;buf db ";Hello world!%1$cglobal main%1$cextern printf%1$csection .text%1$c_main:%1$cpush rbp;Hello world!%1$cmov rbp, rsp%1$cjmp print%1$cprint:%1$cmov rdi, buf%1$cmov rsi, 10%1$cmov rdx, buf%1$cmov r10, 34%1$ccall printf%1$cpop rbp%1$cret%1$csection .data%1$cbuf db %3$c%2$s%3$c"
;endl db 10, 0
;quote db 34, 0
