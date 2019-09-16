
%{
   int c=0,a;
%}

%%
[A-Z]+ {c+=yyleng;printf("The string %d = %s\n",++a, yytext);}
\n {return 0;}
%%

int yywrap()
{
}

int main()
{
 
 printf("Enter the string\n");
 yylex();
 printf("The capital letter are = %d\n",c);

 return 0;
}