#!/bin/bash
#--------------------------------------------------------------------
# 06. Print the Nth Fibonacci number
# Usage: ./06-fibonacci-nth.sh <n>
#--------------------------------------------------------------------

n="${1:?usage: $0 <n>}"

a=0; b=1
for (( i=0; i<n; i++ )); do
    t=$(( a + b )); a=$b; b=$t
done

echo "$a"

# ---- the one-liner version, for when they ask you to shorten it ----
# awk -v n="$1" 'BEGIN{a=0;b=1; while(i++<n){t=a+b; a=b; b=t} print a}'
