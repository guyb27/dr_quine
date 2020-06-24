#include <stdio.h>
/*Seulement trois defines sont utilisees*/
#define STDOUT "Grace_kid.c"
#define PRINTABLE "#include <stdio.h>%1$c%2$c*Seulement trois defines sont utilisees*%2$c%1$c#define STDOUT %3$cGrace_kid.c%3$c%1$c#define PRINTABLE %3$c%4$s%3$c%1$c#define START int main(){FILE *file;if ((file = fopen(STDOUT,%3$cw%3$c)) == NULL) return (1);fprintf(file,PRINTABLE,10,47,34,PRINTABLE);fclose(file);return(0);}%1$cSTART;"
#define START int main(){FILE *file;if ((file = fopen(STDOUT,"w")) == NULL) return (1);fprintf(file,PRINTABLE,10,47,34,PRINTABLE);fclose(file);return(0);}
START;