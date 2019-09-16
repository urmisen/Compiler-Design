%option noyywrap

%{
    #include "cal.tab.h"
%}

digit [0-9]
number ({digit}+)

%%
{number} {yylval=atoi(yytext); return NUMBER;}
"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"(" {return LP;}
")" {return RP;}
\n {return EOL;}
%%