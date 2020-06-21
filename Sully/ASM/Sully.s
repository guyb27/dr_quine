section .text
global main
extern printf,strcmp,strlen,sprintf
;test:

first_call:
mov rdi,format;
mov rdx,5
push rdx;REMPLACER PAR RAX
xor rax,rax;
call printf;
pop rax
ret

not_first_call:
ret

main:
push rbp
mov rbp,rsp

mov rcx,rsi;
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

mov rdi,format;
mov rdx,rax
xor rax,rax;
call printf;

mov rdi,printable
movzx rsi, byte [index_max];movzx permet d ajuster la taille et de rajouter des 0 car la c est un type plus grand
sub rsi,1;DECREMENTE 1 AU COMPTEUR
xor rax, rax
mov rdx, 34
mov rcx,printable
call printf
pop rbp
ret

section .data
index_max db 5
printable db "SOURCE_CODE %1$d",0
first_exec db "Sully",0
format db "%s %d",0x0a,0;0x0a=='\n'
test_ db "%d",0x0a,0;0x0a=='\n'
exec_line db "Sully_%d",0
sourcecode_line db "Sully_%d.s",0

section .bss
buf resb 20000