%{
    int count_lower=0;
    int count_upper=0;
    int count_num=0;
%}
letter [a-zA-Z]
digit [0-9]
%%
[a-z]* {printf("%s is lowercase letter\n",yytext); 
        count_lower++;}
[A-Z]* {printf("%s is Uppercase letter\n",yytext);
        count_upper++ ;}
[0-9]* {printf("%s is Number\n",yytext); 
        count_num++;}
. {printf("\n IGNORE \n"); }
\n {return 0;}
%%

int yywrap(){
    //no reason to use
    //useless function
}

int main(){
    yylex();
    printf("No of letter in uppercase word = %d\n", count_upper);
    printf("No of letters in lowercase word= %d\n", count_lower);
    printf("No of digits in number = %d\n", count_num);

    return 0;

}