%{
    #include <stdio.h>
    #include "y.tab.h"
    int linea = 1;
%}

%option noyywrap
%option yylineno

ent [0-9]+
real [0-9]*.[0-9]+
id [A-Za-z_][A-Za-z0-9_]*
num {ent}|{real}

%%
{num}       {return (NUM);}
"+"         {return (ADD);}
"-"         {return (SUB);}
"("         {return (LPAR);}
")"         {return (RPAR);}
{id}        {return (ID);}
[" "\t]+    {}
"\n"        {
    linea++;
}
.           {printf("Error lexico en la linea: %d\n", linea);}

%%