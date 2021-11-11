#!/bin/bash
#Reading string from a console
read -r -p "Enter a string: " STR
#Creating a new string, that contains only letters of Latin alphabet
#That means, no cyrilics, no numbers, no special characters, which is described by [^a-zA-Z]
STRN=`echo $STR | sed 's/[^a-zA-Z]*//g'`;
#Now sorting all letters in new string and putting them into a file as a single line
grep -o . <<< "${STRN}" | sort | tr -d '\n' | tee text.txt
fi
