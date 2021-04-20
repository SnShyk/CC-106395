
/***The following categories of tokens exist: line structure, identifiers, keywords, literals, operators, and
delimiters***/


%{
#include <stdio.h>

#define ID 0
#define linestr 2
#define operators 1
#define keywords 3 
#define LITERAL 4
#define delimeters 5


%}

digit   [0-9]
letter [a-z]|[A-Z]


%%











[0-9|[a-zA-Z]  printf("%d %s\n",ID,yytext);

"+"|"-"|"*"|"//"|"%"|"=="|"!="|"<="|">="|"<"|">"|"is" printf("%d %s\n",operators,yytext);

."/r/n"|# |[ -\t-\n-#]+ printf("%d %s\n",linestr,yytext);


False|None|True|and|as|assert|async|await|break|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|lambda|non|local|not|or|pass|raise|return|try|while|with|yield printf("%d %s\n",keywords,yytext);



[0-9]*|[0-9]*"."[0-9]*e[-|+][0-9]*|[a-z]* printf("%d %s\n",LITERAL,yytext);

"."|":"|","|";" printf("%d %s\n",delimeters,yytext);


%%

  

int yywrap(){}

int main(){
  
yylex();

	
  
}
