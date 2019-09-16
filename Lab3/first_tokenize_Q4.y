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
%token String True AS MsgBox ExampleProg Sub Dim End BOOlEAN
%token ADDOP MULOP DIVOP INCR DECR OROP ANDOP NOTOP EQUOP RELOP Boolean
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
id_assign: type ID AS BOOlEAN
		   |type ID AS String
		   ;

id_declare: ID ASSIGN True
			|ID ASSIGN STRING REFER ID
            ;
tail: LPAREN ID RPAREN
      ;
function_statement: type ExampleProg
					|MsgBox tail
					;
end_statement: End type
			;
statement: function_statement
         | id_assign
		 | id_declare 
		 | end_statement
		 ; 
  

type: Sub
	| Dim
    ;




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