%{

%}

%%
int|float|char|double|for|do|if|break|continue|void|switch|return|else|while|public|private|protected|static|class|System|out|println|String|args|goto {printf("\n\t%s is a keyword",yytext);}
\<= | \>= | \< | == | \> {printf("\t%s is a RELATIONAL OPERATOR",yytext);}
[a-zA-Z][a-zA-Z0-9]*\( {printf("\nFUNCTION \n\t%s",yytext);}
\{  {printf("\n BLOCK BEGINS");}
\}  {printf("BLOCK ENDS ");}
[a-zA-Z][a-zA-Z0-9]*(\[[0-9]*\])? {printf("\n %s IDENTIFIER",yytext);}
\".*\" {printf("\n\t %s is a STRING",yytext);}
[0-9]+ {printf("\n %s is a NUMBER ",yytext);}
= {printf("\n\t %s is an ASSIGNMENT OPERATOR",yytext);}
%%


int main()
{
	FILE *file;
	file=fopen("java1.java","r");
	if(!file)
	{
		printf("could not open the file");
		exit(0);
	}
	yyin=file;
	yylex();
	printf("\n");
	return(0);
}
int yywrap()
{
	return(1);
}
