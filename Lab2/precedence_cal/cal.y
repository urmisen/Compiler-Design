%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();
%}

%token NUMBER 
%token ADD SUB MUL DIV LP RP EOL

%%
s: s exp EOL {printf("%d\n", $2);}
  |
  ;

exp: term{$$=$1;}
 | exp ADD term {$$=$1+$3;}
 | exp SUB term {$$=$1-$3;}
 ;
term: factor{$$=$1;}
 | term MUL factor {$$=$1*$3;}
 | term DIV factor {$$=$1/$3;}
 ;  
factor: NUMBER{$$=$1;}
 | LP exp RP {$$=$2;}
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


