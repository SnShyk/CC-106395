
The following categories of tokens exist: line structure, identifiers, keywords, literals, operators, and
delimiters



program ::= Jvar def | func def | class def K
∗
stmt∗
class def ::= class ID ( ID ) : NEWLINE INDENT class body DEDENT
class body ::= pass NEWLINE
| Jvar def | func def K
+
func def ::= def ID ( Jtyped var J, typed varK
∗
K
?
) J-> typeK
?
: NEWLINE INDENT func body DEDENT
func body ::= Jglobal decl | nonlocal decl | var def | func def K
∗
stmt+
typed var ::= ID : type
type ::= ID | IDSTRING | [ type ]
global decl ::= global ID NEWLINE
nonlocal decl ::= nonlocal ID NEWLINE
var def ::= typed var = literal NEWLINE
stmt ::= simple stmt NEWLINE
| if expr : block Jelif expr : block K
∗
Jelse : blockK
?
| while expr : block
| for ID in expr : block
simple stmt ::= pass
| expr
| return JexprK
?
| J target = K
+ expr
block ::= NEWLINE INDENT stmt+ DEDENT
literal ::= None
| True
| False
| INTEGER
| IDSTRING | STRING
expr ::= cexpr
| not expr
| expr Jand | orK expr
| expr if expr else expr
cexpr ::= ID
| literal
| [ Jexpr J, exprK
∗
K
?
]
| ( expr )
| member expr
| index expr
| member expr ( Jexpr J, exprK
∗
K
?
)
| ID ( Jexpr J, exprK
∗
K
?
)
| cexpr bin op cexpr
| - cexpr
bin op ::= + | - | * | // | % | == | != | <= | >= | < | > | is
member expr ::= cexpr . ID
index expr ::= cexpr [ expr ]
target ::= ID
| member expr
| index expr
