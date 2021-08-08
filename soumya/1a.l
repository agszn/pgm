%{
#include<stdio.h>
int id=0,op=0,br=0;
%}
%%
[a-zA-Z0-9]+ {id++; printf("\nthe identifier is:\n"); ECHO;}
[+|*|/]+ {op++; printf("\nthe operator is :\n"); ECHO;}
[-] {op++; printf("\nthe operator is :\n"); ECHO;}
"(" {br++;}
")" {if(br==0) {br=1; return 0;} else br--;}
%%
int main()
{
printf("enter the expression:\n");
yylex();
if((op+1)==id && br==0)
{
printf("the entered expression is valid\n");
printf("the total number of identifiers %d:\n",id);
printf("the total number of operators %d:\n",op);
}
else
printf("the entered expression is invalid\n");
}
