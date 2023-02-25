#!/bin/bash

# clear-line.sh: Clear the last line of the terminal.

if tty -s
then
	tput cuu1
	tput el
fi
