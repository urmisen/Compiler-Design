
%{
   int count=0;
%}

%%
[A-Z] {printf("%s is a character\n", yytext);
       count++; }
[a-z] {printf("%s is a character\n", yytext);
       count++; }
. {printf("%s is not a cahracter\n", yytext); }
\n {return 0;}
%%

int yywrap()
{
}

int main()
{
 yylex();
 printf("No of Character = %d\n", count);

 return 0;
}