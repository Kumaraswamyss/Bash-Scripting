#!/bin/bash
#--------------------------------------------------------------------
# 28. Sum every even number up to N
# Usage: ./28-sum-of-evens.sh <n>
#--------------------------------------------------------------------

n="${1:?usage: $0 <n>}"

sum=0
for (( i=2; i<=n; i+=2 )); do
    sum=$(( sum + i ))
done

echo "$sum"

# ---- the one-liner version, for when they ask you to shorten it ----
# seq 2 2 "$1" | paste -sd+ - | bc      # closed form: k(k+1) where k = n/2
