: '
Arithmetic operators
Relational operators
Boolean operators
String operators
File Test operators

Shell cannot evaluate arithmetic operations by itself, and needs external
programs like expr and awk.
'

#Use of expr is in backticks
#The operators and the operands must be space separated
echo `expr 2 + 3`
echo `expr 3 - 2`
echo `expr 4 % 3`
echo `expr 6 / 3`
echo `expr 4 == 4`
