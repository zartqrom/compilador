%{
	#include<stdio.h>
	void yyerror(char *msg);
	extern int yylex();
	extern int yylineno;
%}

%token NUM
%token ID

%left ADD
%left SUB

%nonassoc LPAR RPAR

%start e

%%

e : t | e ADD t | e SUB t
t : LPAR e RPAR | ID | NUM;

%%

void yyerror(char *msg){
	printf("%s en la linea %d\n",msg,yylineno);
}
