#!/bin/bash

# $1 => search pattern, $2 => search directory
pattern=$1
derectory=$2
if [ -z "$derectory" ]; then
	# current directory
	derectory=','
fi

# -n : print line number
# -H : print the file name
find "$derectory" -type f | xargs grep -nH "$pattern"
