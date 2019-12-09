%{
#include<stdio.h>
#include<stdlib.h>
%}

%token BUILTIN SP ID OP SC

%%
start: BUILTIN SP ID SC {printf("\n Valid declaration\n"); exit(0);}|S1;
S1: BUILTIN SP ID OP ID SC {printf("\nValid declaration\n"); exit(0);};
%%

int yyerror(char *msg){
printf("Invalid declaration\n=%s",msg);
exit(0);
}

int main()
{
printf("Enter the declaration statement :-\n");
yyparse();
}

