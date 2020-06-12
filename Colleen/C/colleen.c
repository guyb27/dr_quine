
#include <stdio.h>
/*Hello world!*/
char s[] = "#include <stdio.h>%1$c%2$c*Hello world!*%2$c%1$cchar s[] = %3$c%4$s%3$c;%1$cvoid ft_print(void)%1$c{%1$cprintf(s,10,47,34,s);%1$c}%1$cint main(void)%1$c{%1$c%2$c*Hello world!*%2$c%1$cft_print();%1$c}";
void ft_print(void)
{
printf(s,10,47,34,s);
}
int main(void)
{
/*Hello world!*/
ft_print();
}