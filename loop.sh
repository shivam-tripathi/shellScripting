COUNT=0

while [[ $COUNT -lt 10 ]]; do
	VAR="$COUNT"
	while [[ $VAR -gt 0 ]]; do
		echo -n $VAR
		VAR=`expr $VAR - 1`
	done
	echo
	COUNT=`expr $COUNT + 1`
done

for VAR in $HOME/.bash*; do
	echo $VAR
done

for VAR1 in 1 2 3 4 5 ; do
	for VAR2 in 1 2 3 4 5 ; do
		VAR3=`expr $VAR1 \* $VAR2`
		echo $VAR1"*"$VAR2" = "$VAR3
	done
	echo
done