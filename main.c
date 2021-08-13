#include <stdio.h>
extern FILE *yyin;
extern int yylex();
extern void yyerror(char *msg);
extern int yyparse();

int main(int argc, char *argv[]){
	yyparse(argv[0]);
	return 0;
}