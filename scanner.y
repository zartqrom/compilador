%{
    #include <stdio.h>
    extern int yylex();
    extern int yylineno;
    void yyerror(char * msg);
%}

%token NUM
%token ID
%token LN

%left ADD
%left SUB

%nonassoc LPAR RPAR

%start e

%%

e : t | e ADD t | e SUB t;
t : LPAR e RPAR | ID | NUM;

%%

void yyerror(char * msg){
    printf("%s en la linea %d\n", msg, yylineno);
}