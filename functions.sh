#!/bin/bash
pow() {
echo $(($1**$2))
}
shortest() {
shortestArg=$(echo "${@}" | awk '{split($0,str," "); for (i in str) {print length(str[i])}}' | sort -n | head -n1)
echo "${@}" | awk -v shortest="$shortestArg" '{split($0,str," "); for (i in str) {if (length(str[i]) == shortest) {print str[i]}}}'
}
print_log() {
echo $(date +[\%Y-\%m-\%d" "\%R]) $1
}
