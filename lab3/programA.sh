#!/bin/bash
read -r -p "Enter a string: " STR
STRN=`echo $STR | sed 's/[^a-zA-Z]*//g'`;
grep -o . <<< "${STRN}" | sort | tr -d '\n' | tee text.txt
fi