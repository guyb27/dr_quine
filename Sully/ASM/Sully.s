section .text
global main
extern printf,strncmp,strlen
;test:

main:
push rbp
mov rbp,rsp
;mov rdi, first_exec
;mov rsi, [rcx]
;mov rdx, 7
;call strncmp

mov rcx,rsi;
mov rsi,[rcx];
mov rdi,format;AFFICHE LE PREMIER PARAM DU MAIN
mov [rsp],rcx;
xor eax,eax;
call printf;

mov rdi,printable
movzx rsi, byte [index_max];movzx permet d ajuster la taille et de rajouter des 0 car la c est un type plus grand
sub rsi,1;DECREMENTE 1 AU COMPTEUR
mov rax, 0
mov rdx, 34
mov rcx,printable
call printf
pop rbp
ret

section .data
index_max db 5
printable db "SOURCE_CODE %1$d",0
first_exec db "Sully.s",0
format db "%s",0x0a,0;0x0a=='\n'