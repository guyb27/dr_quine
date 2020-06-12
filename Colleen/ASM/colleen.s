;Hello world!
global _main
extern _printf
section .text
_main:
push rbp;Hello world!
mov rbp, rsp
jmp print
print:
mov rdi, buf
mov rsi, 10
mov rdx, buf
mov r10, 34
call _printf
pop rbp
ret
section .data
buf db ";Hello world!%1$cglobal _main%1$cextern _printf%1$csection .text%1$c_main:%1$cpush rbp;Hello world!%1$cmov rbp, rsp%1$cjmp print%1$cprint:%1$cmov rdi, buf%1$cmov rsi, 10%1$cmov rdx, buf%1$cmov r10, 34%1$ccall _printf%1$cpop rbp%1$cret%1$csection .data%1$cbuf db %3$c%2$s%3$c"