%option noyywrap
%{

void print(char *s);

enum yytokentype
{
    INT=250,
    DOUBLE=150,
    ID=251
};


%}

delim [ \t\n]
ws ({delim})+
letter [A-Za-z]
digit [0-9]
id (_|{letter})({letter}|{digit})*
number ({digit}+)

%%
{ws} {}
"while"|"WHILE"       { print("WHILE"); }
"if"|"IF"             { print("IF"); }
"int"                 {print("INT");}
"double"              {print("DOUBLE");}
{id}                  {print("ID");}
"("                   {print("LP");}
")"                   {print("RP");}
"{"                   {print("LB");}
"}"                   {print("RB");}
"="                   {print("ASSIGN");}
"."                   {print("DOT");}
"++"                  { print("INCR"); }
"--"                  { print("DCRE"); }
"+"                  { print("PLUS"); }
"-"                  { print("MINUS"); }
{number}              {print("NUMBER");}
";"                   {print("SCOLON");}
%%

void print(char *s)
{
    printf("%s %s\n", s, yytext);
}

int main()
{
    
    yylex();
    return 0;
}