#CC Spring 2021: Project Phase 1#
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**62558** | **Ahsan Sheikh** <!--this is the group leader in bold-->
62902 | Abdul Haleem
<!-- Replace name and student ids with acutally group member names and ids-->

## Language Selected ##
Choco Py
<!--Replace with your choice-->
## Example of main constructs ##
```
Main function is the entry point of any program. But python interpreter executes the source file code sequentially and doesn’t call any method if it’s not part of the code. But if it’s directly part of the code then it will be executed when the file is imported as a module.
That’s why there is a special technique to define main method in python program, so that it gets executed only when the program is run directly and not executed when imported as a module. Let’s see how to define python main function in a simple program

def main():
    print("main function")
    
    
## Example of for methon constructs ##

def __init__(self:"class Name"):
        self.items = [0]
        
## Example of for if else constructs ##  
if x == x:
  print("") 
else:
  print("")     #print value   
        
        
## Example of for while  loop constructs ##
 i:int = 0   (variable declar)
    while i < 0:
       i = i + 1
      
## Example of for array constructs ##
y:int=  [4, 8, 15, 16, 23, 42] 

 ## Example of for loop  constructs ## 
  for num in y:
     print(y[num])
    

 ## Example of for variable  constructs ## 
i:int = 0

## Lexical Specification##
 if:
           
 else:
      
ID := (LETTER|"\_") + (LETTER|"\_"|DIGIT)*
REAL :=

## Language CFG ##
PROG -> LIB FUNCTION | ;
