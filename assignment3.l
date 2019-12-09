%{
	int nchar, nword, nline;	
%}
%%
\n		{ nline++; nchar++; }
[^ \t\n]+	{ nword++; nchar += yyleng; }
.		{ nchar++; }
%%
int yywrap()
{
	return 1;
}
int main(void){
FILE *fi;
char file[20];
printf("\nEnter the name of the file == ");
scanf("%s",file);
fi=fopen(file,"r");
yyin=fi;
yylex();
printf("number of char %d ,number of words %d ,number of line %d",nchar,nword,nline);
return 0;
}
