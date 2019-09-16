/* A Bison parser, made by GNU Bison 2.4.2.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2006, 2009-2010 Free Software
   Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     String = 258,
     True = 259,
     AS = 260,
     MsgBox = 261,
     ExampleProg = 262,
     Sub = 263,
     Dim = 264,
     End = 265,
     BOOlEAN = 266,
     ADDOP = 267,
     MULOP = 268,
     DIVOP = 269,
     INCR = 270,
     DECR = 271,
     OROP = 272,
     ANDOP = 273,
     NOTOP = 274,
     EQUOP = 275,
     RELOP = 276,
     Boolean = 277,
     LPAREN = 278,
     RPAREN = 279,
     LBRACK = 280,
     RBRACK = 281,
     LBRACE = 282,
     RBRACE = 283,
     SEMI = 284,
     DOT = 285,
     COMMA = 286,
     ASSIGN = 287,
     REFER = 288,
     ID = 289,
     ICONST = 290,
     FCONST = 291,
     CCONST = 292,
     STRING = 293
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1685 of yacc.c  */
#line 11 "first_tokenize_Q4.y"

    char char_val;
	int int_val;
	double double_val;
	char* str_val;



/* Line 1685 of yacc.c  */
#line 98 "first_tokenize_Q4.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


