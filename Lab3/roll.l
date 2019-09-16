%option noyywrap
%{


%}

%%
[0-9][0-9]030[0-9][0-9] {printf("Accepted");}
[0-9][0-9]03180 {printf("Accepted");}
[0-9][0-9]031[0-7][0-9] {printf("Accepted");}
. {printf("Rejected"); return 0;}
"end" {return 0;}
%%

int main(){
    yylex();
}

