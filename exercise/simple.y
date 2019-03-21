%{
	#include <stdio.h>
	int yylex();
	void yyerror(const char*);	
%}
%token ID
%%
E		: E '+' T	{ puts("E -> E + E");}
		| T			{ puts("E -> T");}
		;
T 		: T '*' F 	{ puts("T -> T * F");}
		| F 		{ puts("T -> F");}
		| ID 		{ puts("T -> ID");}
		;
F 	 	: '(' E ')'	{ puts("F -> ( E )");}
		| ID 		{ puts("F -> ID");}
		;
%%
int main(){
	yyparse(); return 0;
}
void yyerror(const char *msg)
{
	fputs(msg, stderr);
}