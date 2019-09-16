%{
int cnt=0,cntl=0, dgt=0, sum=0, err=0;
%}

%%
[A-Z] { printf("%s is a capital latter \n", yytext); cntl++; }

[a-z]     { printf("%s is not a capital latter \n", yytext);  cnt++; }

[0-9] { printf("%s is  a NUmber \n", yytext); sum +=yytext[0]-'0';  dgt++;}
.	{ printf("ERROR MSG\n") ; err++;};

\n    { return 0;}
%%

int yywrap() {}


int main()
{
yylex();
printf("NUmber of capital latter %d \n", cntl);
printf("NUmber of Noncapital latter %d \n", cnt);
printf("NUmber of Error Msg %d \n", err);
printf("sum is %d\n", sum);
return 0;
}