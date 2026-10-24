#!/bin/bash
#--------------------------------------------------------------------
# 14. Check whether a number is an Armstrong number
# Usage: ./14-armstrong.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

orig=$n
digits=${#n}
sum=0
while (( n > 0 )); do
    sum=$(( sum + (n %10) ** digits ))
    n=$(( n / 10 ))
done

if (( sum == orig )); then
    echo "$orig is an Armstrong number"
else
    echo "$orig is not Armstrong number"
fi

# ---- the one-liner version, for when they ask you to shorten it ----
# awk -v n="$1" 'BEGIN{l=length(n); for(i=1;i<=l;i++) s+=substr(n,i,1)^l; print (s==n)?"yes":"no"}'
