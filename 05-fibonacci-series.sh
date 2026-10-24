#!/bin/bash
#--------------------------------------------------------------------
# 05. Print the first N Fibonacci numbers
# Usage: ./05-fibonacci-series.sh <count>
#--------------------------------------------------------------------

n="${1:?usage: $0 <count>}"

a=0; b=1
for (( i=0; i<n; i++ )); do
    printf '%d ' "$a"
    t=$(( a + b )); a=$b; b=$t
done
echo

# ---- the one-liner version, for when they ask you to shorten it ----
# awk -v n="$1" 'BEGIN{a=0;b=1; while(i++<n){printf "%d ",a; t=a+b; a=b; b=t} print ""}'