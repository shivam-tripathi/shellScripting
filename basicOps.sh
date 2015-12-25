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
echo `expr 4 \* 2`
echo `expr [4 == 2]`
#0 means false and 1 means true
#conditional statements must be placed between square brackets
#All arithmetic calculations are done using long integers

#Relational operators
#Space between [] and operands and operators
a=10
b=20
echo "[ "$a" -ne "$b" ]"
if [ $a -ne $b ]
then
	echo "works as a condition in if, but not in echo"
fi


if [ "$a" -ne "$b" ]
	then
	echo "Not equals"
fi


if [ "$a" -lt "$b" ]
	then
	echo "Less  than, similarly gt is for greater than"
fi


if [ "$a" -le "$b" ]
	then
	echo "Less than equal to, similarly ge is for greater than equal to"
fi


#! is place outside the brackets
if ! "[ "$a" -ge "$b" ]"
	then
	echo "negation of ge"
fi


if ! [ "$a" -gt "$b" ]
	then
	echo "Negation of greater than "
fi


if ! false
	then
	echo "true"
fi

#Logical OR
if [ $a -o $b ]
	then
	echo "10 OR 20"
fi

#Logical AND
if [ $a -a $b ]
	then
	echo "10 AND 20"
fi

#String relational operators are different than operators for other variables