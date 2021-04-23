%{
   /* Definition section */
  #include<stdio.h>
  #include "y.tab.h"
  extern int yylval;
%}
  
/* Rule Section */
%%
[0-9]+ {
          yylval=atoi(yytext);
          return NUMBER;
  }
[ |\n|\t|""|"	"]+ {
          return 0;
}



[+"|"-"|"*"|"//"|"%"|"=="|"-="|"<="|">="|"<"|">"|"is"|"("|")"|"{"|"}"|"["|"]]+ {
            return OPERATORS;
}

[input|print|len]+ {

            return PREDEFINE;
}

[False|None|True|and|as|assert|async|class|await|break|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|lambda|non|local|not|or|pass|raise|return|try|while|with|yield]+ {
  return KEYWORDS;

}

["."|","|";"|":" ]+ {
  return DELIMETERS;
}


  

  
. return yytext[0];
  
%%
  
int yywrap()
{
 return 1;
}


