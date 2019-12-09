%{
	#include<stdio.h>
	#include "y.tab.h"
%}
%%
and|or|but|because 	{return conj; }
[a-zA-Z]+		{return word; }
[ \t]			;
\n			;
.			;
%%
int yywrap(){
return 1;
}
