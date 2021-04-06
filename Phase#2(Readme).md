## Initializing Variable ##

%{
int chars = 0;
int words = 0;
int lines = 0;
%}
 
/* ChocoPy Lexical Grammar





*/




%{


#define operators 4















#define  Line structure 0

#define identifiers 1

#define keywords 2

#define literals 3

 

#define delimiters 5


#define Comment 6

#define Punctuation 7

#define Specifier 8

#define String 9

#define Program 10

#define Print 11

#define Whitespaces 14


#define digit 13

%}

digit [0-9]
letter [a-z]|[A-Z]

%%



		
"+" | "-"| "*" | "//" | "%" | "==" | "!=" | "<=" | ">=" | "<" | ">" | "is" {printf("\n %d Operators:%s",OP,yytext);}

"\r"|"\n"|#| |" " {printf("\n %d Line structure:%s",Line structure,yytext);}


None|as|assert|async|await|break|continue|del|finally|from|global|in|is|lambda|nonlocal|pass|raise|with|yield 
{printf("\n %d Reserved Keywords:%s",Keyword,yytext);}


"and" | "or"| "not"  {printf("\n %d Logical Operators:%s",Keyword,yytext);}

def "[a-z]" {printf("\n %d function :%s",Keyword,yytext);}

class "[a-z]"( {printf("\n %d class name:%s",Keyword,yytext);}

import {printf("\n %d library :%s",Keyword,yytext);}

try|except {printf("\n %d try catch Statements:%s",Keyword,yytext);}



for"[a-z]" in |while| {printf("\n %d Loop Statements:%s",Keyword,yytext);}



if|else|elif {printf("\n %d condition statment:%s",Keyword,yytext);}

void|int|return {printf("\n %d Return type:%s",Keyword,yytext);}





if|else|elif {printf("\n %d condition statment:%s",Keyword,yytext);}










"["|"]"|"{"|"}" {printf("\n %d Brackets:%s",Bracket,yytext);}









-2^32-2^32|[[0-9]|[0-9.0-9e+-0-9]]*|True |False |None|"[a-z]"|'[a-z]' {printf("\n %d literals:%s",literals,yytext);}


,|:|. {printf("\n %d delimiters:%s",delimiters,yytext);}













%%

int main()
{
  yylex();

}













































