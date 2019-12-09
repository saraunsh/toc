%{
#include "y.tab.h"
#include<stdio.h>
%}

%%
int|float|char {return BUILTIN;}
[a-zA-Z0-9,]+ {return ID;}
[ \t] {return SP;}
= {return OP;}
[;] {return SC;}
. {return yytext[0];}
%%

int yywrap()
{
return 1;
}
