
### CC Spring 2021: Project Report ####
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**62558** | **Ahsan Sheikh** <!--this is the group leader in bold-->
62902 | Abdul Haleem

<!-- Replace name and student ids with acutally group member names and ids-->
## Project Description ##
Replace this text with the description of your project. Tell what the project was about. What you aimed to deliver in the project.

## Sample Language Used ##
 ChocoPy is a restricted subset of Python 3, which can easily be compiled to a target.  ChocoPy programs can be executed directly in a Python (3.6+) interpreter. ChocoPy programs can also be edited using standard Python syntax highlighting. ChocoPy uses Python 3.6 type annotations to enforce static type checking. The type system supports nominal subtyping. The language is fully specified using formal grammar, typing rules, and operational semantics




#### Check Syntax error ####
*python code example 

python -c "import ast; ast.parse(open('programfile').read())"

import ast, traceback

filename = 'programfile'
with open(filename) as f:
    source = f.read()
valid = True
try:
    ast.parse(source)
except SyntaxError:
    valid = False
    traceback.print_exc()
print(valid)

*e.g
var=2+3; 
var=2+4+a; 
print ''as'' error


2+3
5

+3-2 error


#### Lexical Specification ####
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
" "| |\n|\t

* #### Identifiers ####
contiguous sequence of characters its called identifiers. containing . [A-Za=z0-9]*


* #### Keywords ####
keywords are not recognized as identifiers.chocopy keywords.
False, None, True, and,  break, class, continue, def, del, elif, else,
 for, global, if, import, in, is, lambda,return,try, while,  

      
* ####  literals ####
Integer literal in ChocoPy is made up of one or more digits like 0-9. There are non-zero valued integer literals and it is the left most digit 0. If it is only character in the sequence.The integer value of these literals is interpreted in base 10. And its maximum value can be 1-231 literal. Literal with larger value gives the lexical error
 e.g
 * String literals: in ascii  represnt the decimal range [32-126] and double quotes 
\"([^\\"]|\\")*\" e.g literal "He\"ll\"o" but value show this:He"ll"o

 * Integer Literals: limit [0-9] and [1-2^32] [0-9]+ A literal with a larger value than this limit results in a
lexical error.



. #### Operators ####
operators in chocopy
+ - * // % < > <= >= == != = ( ) [ ]  ->

* #### Delimeters ####
* is also called sperator .
e.g , ; : .

## Lexical Tokens ##
the following token in chocopy language

Identifer(Char) :>0,1,2,3,5,6,7  .a,b,c,A,B,C,Z
Line Structure (newline ,Indent ):> \n,\t,"","	"
Keyword:>False,Trueandas,class,await,break,continue,def,,elif,else,for,global,if,import,in,lambda,not,or,retun,while
Operator:>+,-,",*,//,%,==,<=,>=
LITERAL:(string or int) :"asdasd" 123123
Delimeters:>. : ; ,
Predefine:> input,print,len
Comments:>"#"

#### Grammar ####

![Untitled](https://user-images.githubusercontent.com/66660943/115433670-3d3d9a80-a221-11eb-95b9-4476dfa18ff7.png)
![Untitled2](https://user-images.githubusercontent.com/66660943/115433657-3b73d700-a221-11eb-8555-e1c7630808f5.png)

#### Problems Faced ####

#### Problem 1: Yacc program ####
When we merged our lex and yacc file means (1 & .y extension file). We had so many errors in it's compilations like (undefined reference of function in y file, redeifintions, declaration and so on). We had no idea about them because we never worked on such environment. It's our first time when we designed parser so most of the errors were new to us so we researched, took guide from videos and book and then finally after spending several hours on it we resolved them. 

## Problem 2: Install Flex ##
When we created our lexical analyzer we had many issues in its compilation. Our lex file wasn't created because of installation issues in line, so after trying so many times finally we got succeed.
### Problem 3: language selection problem and why we select this.  ###

we don't have any good background for pascal or java but python is used in many course like ml,ai nc fyp.so finally we decide we work on them .chocopy fullfill all necessary requirement like grammar etc.
## References ##
* https://chocopy.org/
* https://www.python.org/dev/peps/pep-0526/
* https://chocopy.org/chocopy_language_reference.pdf
* http://dinosaur.compilertools.net/flex/manpage.html
* https://chocopy.org/chocopy_implementation_guide.pdf


### Demo Video ###

https://user-images.githubusercontent.com/66660943/115952201-15d71e00-a4fe-11eb-9565-ad17e0ab2709.mp4


