section .text
global main
extern printf,strcmp,strlen,sprintf,fopen,fclose,fprintf,system
first_call:
movzx rax, byte [index_max]
push rax;
jmp open_file
not_first_call:
movzx rax, byte [index_max]
sub rax,1
push rax
jmp open_file
exit_success:
pop rbp
mov rax,0
ret
exit_failure:
pop rbp
mov rax,1
ret
main:
push rbp
mov rbp,rsp
cmp byte [index_max],0
jle exit_success
mov rcx,rsi;Parametre du main
mov rdi,[rcx];
push rdi
call strlen
sub rax, 5
pop rsi
add rsi, rax
push rsi
mov rdi, first_exec
call strcmp;
pop rsi
cmp rax,0
je first_call
jmp not_first_call
open_file:
mov rdi,buf
mov rsi,sourcecode_file
pop rdx
push rdx
xor rax,rax
call sprintf
mov rdi,buf
mov rsi,right
call fopen
cmp rax,0
je exit_failure
pop rdi
push rax
push rdi
mov rdi,rax
mov rsi,my_code
mov rdx,10
mov rcx,34
mov r8,37
mov r9,my_code
xor rax,rax
call fprintf
pop rdi
pop rdi
call fclose
mov rdi,buf
mov rsi,exec_line
pop rdx
xor rax,rax
call sprintf
mov rdi,buf
xor rax,rax
call system
pop rbp
xor rax,rax
ret
section .data
index_max db 5
first_exec db "Sully",0
right db "w+",0
exec_line db "nasm -f elf64 Sully_%1$d.s && clang-9 Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d",0
sourcecode_file db "Sully_%d.s",0
my_code db "section .text%1$cglobal main%1$cextern printf,strcmp,strlen,sprintf,fopen,fclose,fprintf,system%1$cfirst_call:%1$cmovzx rax, byte [index_max]%1$cpush rax;%1$cjmp open_file%1$cnot_first_call:%1$cmovzx rax, byte [index_max]%1$csub rax,1%1$cpush rax%1$cjmp open_file%1$cexit_success:%1$cpop rbp%1$cmov rax,0%1$cret%1$cexit_failure:%1$cpop rbp%1$cmov rax,1%1$cret%1$cmain:%1$cpush rbp%1$cmov rbp,rsp%1$ccmp byte [index_max],0%1$cjle exit_success%1$cmov rcx,rsi;Parametre du main%1$cmov rdi,[rcx];%1$cpush rdi%1$ccall strlen%1$csub rax, 5%1$cpop rsi%1$cadd rsi, rax%1$cpush rsi%1$cmov rdi, first_exec%1$ccall strcmp;%1$cpop rsi%1$ccmp rax,0%1$cje first_call%1$cjmp not_first_call%1$copen_file:%1$cmov rdi,buf%1$cmov rsi,sourcecode_file%1$cpop rdx%1$cpush rdx%1$cxor rax,rax%1$ccall sprintf%1$cmov rdi,buf%1$cmov rsi,right%1$ccall fopen%1$ccmp rax,0%1$cje exit_failure%1$cpop rdi%1$cpush rax%1$cpush rdi%1$cmov rdi,rax%1$cmov rsi,my_code%1$cmov rdx,10%1$cmov rcx,34%1$cmov r8,37%1$cmov r9,my_code%1$cxor rax,rax%1$ccall fprintf%1$cpop rdi%1$cpop rdi%1$ccall fclose%1$cmov rdi,buf%1$cmov rsi,exec_line%1$cpop rdx%1$cxor rax,rax%1$ccall sprintf%1$cmov rdi,buf%1$cxor rax,rax%1$ccall system%1$cpop rbp%1$cxor rax,rax%1$cret%1$csection .data%1$cindex_max db %5$d%1$cfirst_exec db %2$cSully%2$c,0%1$cright db %2$cw+%2$c,0%1$cexec_line db %2$cnasm -f elf64 Sully_%3$c1$d.s && clang-9 Sully_%3$c1$d.o -o Sully_%3$c1$d && ./Sully_%3$c1$d%2$c,0%1$csourcecode_file db %2$cSully_%3$cd.s%2$c,0%1$cmy_code db %2$c%4$s%2$c,0%1$csection .bss%1$cbuf resb 20000",0
section .bss
buf resb 20000