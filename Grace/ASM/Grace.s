;Bonjour les amis
%defstr MODE "w"
%defstr OK "MANQUE LE 0"
extern fopen,fprintf,fclose
%macro START 0
section .text
global main
exit_failure:
pop rbp
ret
main:
push rbp
mov rbp,rsp
mov rdi,stdout
mov rsi,mode
call fopen
cmp rax,0
je exit_failure
push rax
mov rdi,rax
mov rsi,printable
mov rdx, 10
mov rcx, 37
mov r8, 34
mov r9, printable
xor rax,rax
call fprintf
pop rdi
call fclose
pop rbp
ret
%endmacro
START
section .data
printable: db ";Bonjour les amis%1$c%2$cdefstr MODE %3$cw%3$c%1$c%2$cdefstr OK %3$cMANQUE LE 0%3$c%1$cextern fopen,fprintf,fclose%1$c%2$cmacro START 0%1$csection .text%1$cglobal main%1$cexit_failure:%1$cpop rbp%1$cret%1$cmain:%1$cpush rbp%1$cmov rbp,rsp%1$cmov rdi,stdout%1$cmov rsi,mode%1$ccall fopen%1$ccmp rax,0%1$cje exit_failure%1$cpush rax%1$cmov rdi,rax%1$cmov rsi,printable%1$cmov rdx, 10%1$cmov rcx, 37%1$cmov r8, 34%1$cmov r9, printable%1$cxor rax,rax%1$ccall fprintf%1$cpop rdi%1$ccall fclose%1$cpop rbp%1$cret%1$c%2$cendmacro%1$cSTART%1$csection .data%1$cprintable: db %3$c%4$s%3$c,0%1$cstdout: db %3$cGrace_kid.s%3$c,0%1$cmode: db %3$cw%3$c,0",0
stdout: db "Grace_kid.s",0
mode: db "w",0