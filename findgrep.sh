#!/bin/bash

pattern=$1
derectory=$2
if [ -z "$derectory" ]; then
	derectory=','
fi
find "$derectory" -type f | xargs grep -nH "$pattern"
