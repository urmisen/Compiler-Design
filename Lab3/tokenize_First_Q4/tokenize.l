%option noyywrap
%{

void print(char *s);

%}

delim [ \t\n]
ws ({delim})+
letter [A-Za-z]
digit [0-9]
id (_|{letter})({letter}|{digit})*
number ({digit}+)

%%
{ws} {}
"Dim"         {print("DIM");}
"MsgBox"      {print("MSGBOX");}
"Sub"         {print("SUB");}
"Boolean"     {print("BOOLEAN");}
"as"          {print("AS");}
"True"        {print("TRUE");}
"String"      {print("STRING");}
"End"         {print("END");}

\"([^\\\"]|\\.)*\" {
    print("LITERAL");
}

{id} {print("ID");}
"&" {print("AND");}
"(" {print("LP");}
")" {print("RP");}
"{" {print("LB");}
"}" {print("RB");}
"=" {print("ASSIGN");}
";" {print("SCOLON");}
"," {print("COMMA");}
%%

void print(char *s)
{
    printf("%s %s\n", yytext, s);
}

int main()
{
    yylex();
    return 0;
}