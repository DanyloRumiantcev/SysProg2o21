#!/bin/bash
#Reading text from file and putting its length into a variable for further use
text=$(<text.txt)
size=${#text}

#Here starts the letter evaluation
#------------------------------------------------------------
cA=$(grep -o 'a\|A' <<<"$text" | grep -c .) #putting command into a variable for easier access + for echo command
echo -n "Letter 'a' was found "
echo -n "$cA"
echo -n " time(s), which is "
awk -v a="$cA" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #using awk with assigned variables for evaluation of statistics
echo " % of a file"
#------------------------------------------------------------
cB=$(grep -o 'b\|B' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'b' was found "
echo -n "$cB"
echo -n " time(s), which is "
awk -v a="$cB" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cC=$(grep -o 'c\|C' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'c' was found "
echo -n "$cC"
echo -n " time(s), which is "
awk -v a="$cC" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cD=$(grep -o 'd\|D' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'd' was found "
echo -n "$cD"
echo -n " time(s), which is "
awk -v a="$cD" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cE=$(grep -o 'e\|E' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'e' was found "
echo -n "$cE"
echo -n " time(s), which is "
awk -v a="$cE" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cF=$(grep -o 'f\|F' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'f' was found "
echo -n "$cF"
echo -n " time(s), which is "
awk -v a="$cF" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cG=$(grep -o 'g\|G' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'g' was found "
echo -n "$cG"
echo -n " time(s), which is "
awk -v a="$cG" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cH=$(grep -o 'h\|H' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'h' was found "
echo -n "$cH"
echo -n " time(s), which is "
awk -v a="$cH" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cI=$(grep -o 'i\|I' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'i' was found "
echo -n "$cI"
echo -n " time(s), which is "
awk -v a="$cI" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cJ=$(grep -o 'j\|J' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'j' was found "
echo -n "$cJ"
echo -n " time(s), which is "
awk -v a="$cJ" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cK=$(grep -o 'k\|K' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'k' was found "
echo -n "$cK"
echo -n " time(s), which is "
awk -v a="$cK" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cL=$(grep -o 'l\|L' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'l' was found "
echo -n "$cL"
echo -n " time(s), which is "
awk -v a="$cL" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cM=$(grep -o 'm\|M' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'm' was found "
echo -n "$cM"
echo -n " time(s), which is "
awk -v a="$cM" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cN=$(grep -o 'n\|N' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'n' was found "
echo -n "$cN"
echo -n " time(s), which is "
awk -v a="$cN" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cO=$(grep -o 'o\|O' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'o' was found "
echo -n "$cO"
echo -n " time(s), which is "
awk -v a="$cO" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cP=$(grep -o 'p\|P' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'p' was found "
echo -n "$cP"
echo -n " time(s), which is "
awk -v a="$cP" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cQ=$(grep -o 'q\|Q' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'q' was found "
echo -n "$cQ"
echo -n " time(s), which is "
awk -v a="$cQ" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cR=$(grep -o 'r\|R' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'r' was found "
echo -n "$cR"
echo -n " time(s), which is "
awk -v a="$cR" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cS=$(grep -o 's\|S' <<<"$text" | grep -c .) #ditto
echo -n "Letter 's' was found "
echo -n "$cS"
echo -n " time(s), which is "
awk -v a="$cS" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cT=$(grep -o 't\|T' <<<"$text" | grep -c .) #ditto
echo -n "Letter 't' was found "
echo -n "$cT"
echo -n " time(s), which is "
awk -v a="$cT" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cU=$(grep -o 'u\|U' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'u' was found "
echo -n "$cU"
echo -n " time(s), which is "
awk -v a="$cU" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cV=$(grep -o 'v\|V' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'v' was found "
echo -n "$cV"
echo -n " time(s), which is "
awk -v a="$cV" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cW=$(grep -o 'w\|W' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'w' was found "
echo -n "$cW"
echo -n " time(s), which is "
awk -v a="$cW" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cX=$(grep -o 'x\|X' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'x' was found "
echo -n "$cX"
echo -n " time(s), which is "
awk -v a="$cX" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cY=$(grep -o 'y\|Y' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'y' was found "
echo -n "$cY"
echo -n " time(s), which is "
awk -v a="$cY" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
cZ=$(grep -o 'z\|Z' <<<"$text" | grep -c .) #ditto
echo -n "Letter 'z' was found "
echo -n "$cZ"
echo -n " time(s), which is "
awk -v a="$cZ" -v b="$size" 'BEGIN {printf "%.2f",a*100/b}' #ditto
echo " % of a file"
#------------------------------------------------------------
fi