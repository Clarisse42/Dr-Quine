#include <stdio.h>
void tqt(void){
char *s = "#include <stdio.h>%cvoid tqt(void){%cchar *s = %c%s%c;%cprintf(s, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c/*%c	Hola%c*/%cint main(void){%c/*%c	Hola2%c*/%ctqt();%creturn(0);%c}%c";
printf(s, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}
/*
	Hola
*/
int main(void){
/*
	Hola2
*/
tqt();
return(0);
}
