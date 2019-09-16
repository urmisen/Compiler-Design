%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	extern int lineno;
    int yylex();
	void yyerror();
%}

/* YYSTYPE union */
%union{
    char char_val;
	int int_val;
	double double_val;
	char* str_val;
}

/* token definition */
%token CHAR INT FLOAT DOUBLE IF ELSE WHILE FOR CONTINUE BREAK VOID RETURN MAIN
%token ADDOP MULOP DIVOP INCR DECR OROP ANDOP NOTOP EQUOP RELOP
%token LPAREN RPAREN LBRACK RBRACK LBRACE RBRACE SEMI DOT COMMA ASSIGN REFER
%token ID
%token <int_val> 	 ICONST
%token <double_val>  FCONST
%token <char_val> 	 CCONST
%token <str_val>     STRING


%start program

%%

program: statements;

statements: statements statement 
			| /*epsilon*/
			;
id_assign: ID ASSIGN expression SEMI;

id_declare: INT ID ASSIGN ICONST SEMI
			| DOUBLE ID ASSIGN FCONST SEMI
			| FLOAT ID ASSIGN FCONST SEMI
			| CHAR ID ASSIGN CCONST SEMI
            ;
main_statement:  type MAIN LPAREN RPAREN tail
              ;
while_statement: WHILE LPAREN expression RPAREN tail
            ;

tail: LBRACE statements RBRACE
      ;
statement: main_statement
         | while_statement
		 | ID ASSIGN expression SEMI 
		 | type ID SEMI 
         | ID LPAREN STRING COMMA ID RPAREN SEMI
		 | type ID ASSIGN expression SEMI 
         | expression SEMI
         |BREAK SEMI
		 ; 
  

type: INT 
	| CHAR 
	| FLOAT 
	| DOUBLE 
	| VOID ;


constant: ICONST 
		| CCONST 
		| FCONST 
		;

expression: expression ADDOP expression
		  | expression OROP expression
		  | expression ANDOP expression
		  | expression EQUOP expression
          | INCR expression
	      | expression INCR
          | DECR expression
	      | expression DECR
          | expression RELOP expression
		  | constant 
		  | ID
          | /*epsilon*/  
		  ;

%%
void yyerror ()
{
  fprintf(stderr, "Syntax error at line %d\n", lineno);
  exit(1);
}
int main (int argc, char *argv[])
{
	int flag;
	yyparse();
	printf("Parsing finished!");
}