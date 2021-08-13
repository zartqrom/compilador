# Analizador sintáctico

## Instrucciones para probar el proyecto

Ejecuta *yacc -d scanner.y*

Después *flex -o lexer.c parser.l*

Se compila el proyecto *gcc lexer.c y.tab.c Main.c*

Finalmente, se corre *./a.out 

Se ingresa un dato a la consola. El segundo dato no lo acepta como valido a pesar de que lo sea
