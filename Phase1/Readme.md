### CC Spring 2021: Project Phase 1 ####
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**62558** | **Ahsan Sheikh** <!--this is the group leader in bold-->
62902 | Abdul Haleem


### Language Selected ###
"Choco Py" 

ChocoPy is a programming language . ChocoPy is a restricted subset of Python 3. The language is fully specified using formal grammar, typing rules, and operational semantics

### Example of main constructs ###

Main function is the entry point of any program. But python interpreter executes the source file code sequentially and doesn’t call any method if it’s not part of the code. But if it’s directly part of the code then it will be executed when the file is imported as a module.
That’s why there is a special technique to define main method in python program, so that it gets executed only when the program is run directly and not executed when imported as a module. Let’s see how to define python main function in a simple program.

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

* #### Line structure ####
 To accommodate this, ChocoPy defines three lexical
tokens that are derived from whitespace: NEWLINE, INDENT, and DEDENT. The rules for when such tokens are
generated are described next using the concepts of physical and logical lines.
 Logical Line:NEWLINE  (A physical line is a sequence of characters terminated by an end-of-line sequence)
 Physical Line:\r\n (A logical line is a physical line that contains at least one token that is not whitespace or comments. The end
of a logical line is represented by the lexical token NEWLINE.)

* #### Comments ####
A comment starts with a hash character (#) that is not part of a string literal, and ends at the end of the
physical line. Comments are ignored by the lexical analyzer


* #### Whitespaces ####
The whitespace characters space and tab can be used to separate tokens. It is needed between two tokens only if their concatenation could otherwise it will be deal as a different token.Whitespace characters are not tokens, they are simply ignored.
e.g ab is a tokken but a b is two tokken 

* #### Identifiers ####
contiguous sequence of characters its called identifiers. containing . [A-Za=z0-9]*


* #### Keywords ####
keywords are not recognized as identifiers.chocopy keywords.
False, None, True, and,  break, class, continue, def, del, elif, else,
 for, global, if, import, in, is, lambda,return,try, while,  
// <token>"Flase" {return symbol(chocoPyTokens.False);}
// <token>"None" {return symbol(chocoPyTokens.None);}
// <token>"True" {return symbol(chocoPyTokens.True);}
      
* #### Integer literals ####
Integer literal in ChocoPy is made up of one or more digits like 0-9. There are non-zero valued integer literals and it is the left most digit 0. If it is only character in the sequence.The integer value of these literals is interpreted in base 10. And its maximum value can be 1-231 literal. Literal with larger value gives the lexical error
 e.g
 * String literals: in ascii  represnt the decimal range [32-126] and double quotes
 * Integer Literals: limit [0-9] and [1-2^32] A literal with a larger value than this limit results in a
lexical error.



* #### Operators ####
operators in chocopy
+ - * // % < > <= >= == != = ( ) [ ] , : . ->

* #### Delimeters ####
* is also called sperator .
e.g , ;



## Language CFG ##
![Untitled](https://user-images.githubusercontent.com/66660943/115433670-3d3d9a80-a221-11eb-95b9-4476dfa18ff7.png)
![Untitled2](https://user-images.githubusercontent.com/66660943/115433657-3b73d700-a221-11eb-8555-e1c7630808f5.png)



