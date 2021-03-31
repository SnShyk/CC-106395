#CC Spring 2021: Project Phase 1#
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**62558** | **Ahsan Sheikh** <!--this is the group leader in bold-->
62902 | Abdul Haleem


### Language Selected ###
Choco Py

ChocoPy is a programming language . ChocoPy is a restricted subset of Python 3, The language is fully specified using formal grammar, typing rules, and operational semantics

### Example of main constructs ###

Main function is the entry point of any program. But python interpreter executes the source file code sequentially and doesn’t call any method if it’s not part of the code. But if it’s directly part of the code then it will be executed when the file is imported as a module.
That’s why there is a special technique to define main method in python program, so that it gets executed only when the program is run directly and not executed when imported as a module. Let’s see how to define python main function in a simple program

def main():
    print("main function")
    
    
* #### Example of for methon constructs ####

def __init__(self:"class Name"):
        self.items = [0]
        
* #### Example of for if else constructs ####  
if x == x:
  print("") 
else:
  print("")     #print value   
        
        
* #### Example of for while  loop constructs ####
 i:int = 0   (variable declar)
    while i < 0:
       i = i + 1
      
* #### Example of for array constructs ####
y:int=  [4, 8, 15, 16, 23, 42] 

 * #### Example of for loop  constructs #### 
  for num in y:
     print(y[num])
    

 * #### Example of for variable  constructs #### 
i:int = 0

### Lexical Specification ###
 
* #### Whitespaces ####
The whitespace characters space and tab can be used to separate tokens. It is needed between two tokens only if their concatenation could otherwise it will be deal as a different token.Whitespace characters are not tokens, they are simply ignored.
      
* #### Integer literals ####
Integer literal in ChocoPy is made up of one or more digits like 0-9. There are non-zero valued integer literals and it is the left most digit 0. If it is only character in the sequence.The integer value of these literals is interpreted in base 10. And its maximum value can be 1-231 literal. Literal with larger value gives the lexical error

* #### Identifiers ####
contiguous sequence of characters its called identifiers. containing . [A-Za=z0-9]*
{identifier} {return symbol(chocoPyTokens.IDENTIFIER,yytext());}
* #### Keywords ####
keywords are not recognized as identifiers.chocopy keywords.
False, None, True, and,  break, class, continue, def, del, elif, else,
 for, global, if, import, in, is, lambda,return,try, while,  
 <token>"Flase" {return symbol(chocoPyTokens.False);}
 <token>"None" {return symbol(chocoPyTokens.None);}
 <token>"True" {return symbol(chocoPyTokens.True);}

* #### Operators ####
operators in chocopy
+ - * // % < > <= >= == != = ( ) [ ] , : . ->

* #### Comments ####
A comment starts with a hash character (#) that is not part of a string literal, and ends at the end of the
physical line. Comments are ignored by the lexical analyzer





## Language CFG ##
PROG -> LIB FUNCTION | ;
func_type: '(' [type_expressions] ')' '->' expression NEWLINE* ENDMARKER 
    | single_target augassign ~ (yield_expr | star_expressions) 
augassign:
    | '+=' 
    | '-=' 
    | '*=' 
    | '@=' 
    | '/=' 
    | '%=' 
    | '&=' 
    | '|=' 
    | '^=' 
    | '<<=' 
    | '>>=' 
    | '**=' 
    | '//=' 

global_stmt: 'global' ','.NAME+ 



del_stmt:
    | 'del' del_targets &(';' | NEWLINE) 
import_stmt: import_name | import_from

if_stmt:
    | 'if' named_expression ':' block elif_stmt 
    | 'if' named_expression ':' block [else_block] 
elif_stmt:
    | 'elif' named_expression ':' block elif_stmt 
    | 'elif' named_expression ':' block [else_block] 
else_block: 'else' ':' block 

while_stmt:
    | 'while' named_expression ':' block [else_block] 

for_stmt:
    | 'for' star_targets 'in' ~ star_expressions ':' [TYPE_COMMENT] block [else_block] 
    | ASYNC 'for' star_targets 'in' ~ star_expressions ':' [TYPE_COMMENT] block [else_block] 
    
    
try_stmt:
    | 'try' ':' block finally_block 
    | 'try' ':' block except_block+ [else_block] [finally_block] 
except_block:
    | 'except' expression ['as' NAME ] ':' block 
    | 'except' ':' block 
finally_block: 'finally' ':' block 



return_stmt:
    | 'return' [star_expressions] 
    
parameters:
    | slash_no_default param_no_default* param_with_default* [star_etc] 
    | slash_with_default param_with_default* [star_etc] 
    | param_no_default+ param_with_default* [star_etc] 
    | param_with_default+ [star_etc] 
    | star_etc 
class_def_raw:
    | 'class' NAME ['(' [arguments] ')' ] ':' 
