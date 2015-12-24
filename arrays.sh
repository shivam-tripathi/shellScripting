
: '
Scalar variables can store atmost a single value. Array variables can store
a number of variables.
'

#Initialising array all at the same time
ARR=("one" "two" "third")

#Initialising array elements one by one
ARR[3]="four"

#Accessing the elements of the array
echo ${ARR[2]}
echo ${ARR[3]}

#Accessing the entire array at the same time
echo ${ARR[*]}
echo ${ARR[@]}