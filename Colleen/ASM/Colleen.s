;Bonjour les amis
section .text
global main
extern printf
print:
mov rdi,printable
mov rsi, 10
mov rax, 0
mov rdx, 34
mov rcx,printable
call printf
ret
main:
;https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md
jmp print
section .data
printable db ";Bonjour les amis%1$csection .text%1$cglobal main%1$cextern printf%1$cprint:%1$cmov rdi,printable%1$cmov rsi, 10%1$cmov rax, 0%1$cmov rdx, 34%1$cmov rcx,printable%1$ccall printf%1$cret%1$cmain:%1$c;https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md%1$cjmp print%1$csection .data%1$cprintable db %2$c%3$s%2$c,0",0