%{
    #include<stdio.h>
    
    void yyerror(char *s); 
    int yylex();
%}

%token NUMBER
%token MUL DIV ADD SUB EOL

%%
cal:
 | cal exp EOL {printf("%d\n> ", $2);}
 | cal EOL {printf(">")}
 | 
 ;

exp: term
 | exp ADD term {$$=$1+$3;}
 | exp SUB term {$$=$1-$3;}
 ;
term:NUMBER {$$=$1;}
 | exp MUL NUMBER {$$=$1*$3;}
 | exp DIV NUMBER {$$=$1/$3;}
 ;
%%
int main()
{
    //printf("> ");
    yyparse();
}
void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}