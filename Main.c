#include <stdio.h>
extern FILE * yyin;
extern int yylex();
extern void yyerror(char * msg);
extern int yyparse();

int main(int argc, char ** argv){
    FILE * archivo = fopen(argv[1], "r");
    if(argc < 2) return -1;
    if(!archivo)  return -1;
    yyin = archivo;
    yyparse();
    fclose(archivo);
    return 0;
}