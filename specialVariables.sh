: '
Local variables are those visible inside the code block or the function.
Child processes of a shell essentially are the commands it executes. Environment
variables are available to these child processes. Child process is a subprocess
launched by another process.

If a script sets environmental variables, they need to be "exported," that is,
reported to the environment local to the script. This is the function of the
export command.

A script can export variables only to child processes, that is, only to commands
or processes which that particular script initiates. A script invoked from the
command-line cannot export variables back to the command-line environment. Child
processes cannot export variables back to the parent processes that spawned
them.
'
#We cannot use alphanumeric characters in variables as they have special meaning

#$ represents PID, process number of present shell
echo "Process id : "$$

#filename of current script
echo "Filename of current script : "$0

#number of command line argument
echo "Number of command line argument(s) : "$#

#the command line variables are represented by $n where n is nth variable
#after 9th variable the variables must be enclosed inside brackets - ${10} etc
echo "First argument : "$1
echo "Second argument : "$2

#Entire argument list is read as single string argument
echo $*

#Each variable is read individually as string, and then concatenated
echo $@

#Exit status of last command executed
#0 means succesful execution, 1 means unsuccessful execution
echo $?

#Process number of last background number
echo $!

: '
$* and $@ both represent entire positional arguments, and behave equivalently,
unless they are enclosed in double quotes.
'

echo "* \"$*\""
echo "@ \"$@\""

#Echoing all the arguments
for TOKEN in $*
do
	echo $TOKEN
done