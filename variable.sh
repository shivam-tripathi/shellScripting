#!/bin/sh
#Variable is a character string to which we assign a value(number, filename etc)
#Variable names can contain only alphabets, numbers or an underscore.
#Variable names may not begin with numbers.
#Variable names by convention are in upper case.

#Scalar variables - can hold only one value at a time
NAME="user name"
NUMBER=123

#Variables are accessed with a $ before their name.
echo $NAME
echo $NUMBER

#Read only variable
readonly NAME

#Removing a variable
#unset cannot be used with readonly variables
unset NUMBER
echo $NUMBER

#prepend or append to the variables
NAMES="hello"
NAMES="world"$NAMES"world"
echo $NAMES

#Types of variables:
#	Local variables : Present within the present instance of the shell. Not
#		available to the child processes. Defined at the command prompt.
#	Environment variables : Available to all child processes of shell. Usually
#		only those environment variables are defined by the shell, which are
#		needed by the child processes, during initialisation.
#	Shell variables : These are set by shell to function correctly.


: '
Every UNIX process runs in an environment. An environment consists of a table of
environment variables, each with an assigned value. When we login the system,
login files are executed, which initilise the variable table (profile and /etc/
profile usually). When this file passes on to the shell, the table becomes
available to the shell.

The shell also maintains a set of internal variables, called the shell
variables. The shell variables are local to the shell they are defined, they are
not available to the parent or the child shells.

Environment variables are named in upper case, while shell variables are upper
case in Bourne shells and lower in C shells.

In Bourne shell family, when shell starts up, shell reads each of environment
variables and then itself a shell variable for each one, using same name, and
copies the values. From that point on, the shell refers only to the shell
variables.
If any change is to be made to the shell variable, then it must be exported
ecplicitly to the environment variable using export command.
'

# export is used to make shell variable act as environment variable
