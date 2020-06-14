#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <unistd.h>
#include <stdlib.h>
int main()
{
int i = 5;
char source_code[] = "#include <stdio.h>%1$c#include <string.h>%1$c#include <limits.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$cint main()%1$c{%1$cint i = 5;%1$cchar source_code[] = %2$c%3$s%2$c;%1$cchar file_name[NAME_MAX];%1$cchar path[PATH_MAX];%1$cchar cmd[PATH_MAX+NAME_MAX+1000];%1$cFILE *file;%1$cbzero(file_name,sizeof(file_name));%1$ci-=__FILE__!=%2$cSully.c%2$c?1:0;%1$csprintf(file_name, %2$cSully_%4$cd.c%2$c,i);%1$cif (i<0||!(file = fopen(file_name,%2$cw%2$c)))%1$creturn (i<0?0:1);%1$cfprintf(file,source_code,10,34,source_code,37);%1$cfclose(file);%1$cgetcwd(path,PATH_MAX);%1$csprintf(cmd,%2$cgcc %4$c1$s/%4$c2$s -o Sully_%4$c3$d%2$c,path,file_name,i);%1$csystem(cmd);%1$csprintf(cmd,%2$c%4$cs/Sully_%4$cd%2$c, path, i);%1$csystem(cmd);%1$creturn (0);%1$c}";
char file_name[NAME_MAX];
char path[PATH_MAX];
char cmd[PATH_MAX+NAME_MAX+1000];
FILE *file;
bzero(file_name,sizeof(file_name));
i-=__FILE__!="Sully.c"?1:0;
sprintf(file_name, "Sully_%d.c",i);
if (i<0||!(file = fopen(file_name,"w")))
return (i<0?0:1);
fprintf(file,source_code,10,34,source_code,37);
fclose(file);
getcwd(path,PATH_MAX);
sprintf(cmd,"gcc %1$s/%2$s -o Sully_%3$d",path,file_name,i);
system(cmd);
sprintf(cmd,"%s/Sully_%d", path, i);
system(cmd);
return (0);
}