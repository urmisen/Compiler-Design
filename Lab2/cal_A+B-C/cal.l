%option noyywrap

%{
    #include "cal.tab.h"
%}

delim [ \t\n]
ws ({delim})+
letter [A-Za-z]
digit [0-9]
id (_|{letter})({letter}|{digit})*
number ({digit}+)

STRING    \"{print}*\"

%%
{number} {yylval=atoi(yytext); return NUMBER;}
"+" {return ADD;}
"-" {return SUB;}
"/" {return DIV;}
"*" {return MUL;}
\n {return EOL;}


%%