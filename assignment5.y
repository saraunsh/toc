%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token conj word

%%
sentance:compound {printf("\ncompound sentence\n"); }
	|
	simple {printf("\nSimple sentence\n"); };
compound:S1 conj S1;
S1:word S1|S1 word|word ;
simple:word simple|simple word|word ;

%%

int yyerror(char *msg){
printf("error\n");
exit(0);
}
int main(){
printf("\nEnter the line == \n");
yyparse();
}

