: '
There are two ways of decision making :
	if else constructs
		if fi
		if else fi
		if elif fi
	switch case
'

if true
	then
	echo "true"
fi

if ! false
	then
	echo "Not false"
else
	echo "This will not be printed"
fi

if ! [ 30 -gt 20 ]; then
	echo "one"
elif ! [[ 30 -lt 20 ]]; then
	echo "two"
fi

FRUIT="mango"

case "$FRUIT" in
	"apple") echo "Apple";;
	"banana") echo "Banana";;
	"mango") echo "Mango";;
esac

#using command line argument in switch case
FILE="decisionMaking.sh"
DIR="/code/shell"
case "${1}" in
	-f) echo "File name is $FILE" ;;
	-d) echo "Directory's name is $DIR" ;;
	*) echo "basename ${0} : usage [-f file] | [-d Directory]" ;;
esac
