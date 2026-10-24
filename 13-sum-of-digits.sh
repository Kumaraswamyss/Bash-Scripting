#!/bin/bash
#--------------------------------------------------------------------
# 13. Add up the digits of a number
# Usage: ./13-sum-of-digits.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

sum=0
while (( n > 0 )); do
    sum=$(( sum + n % 10 ))
    n=$(( n / 10 ))
done

echo "$sum"

# ---- the one-liner version, for when they ask you to shorten it ----
# fold -w1 <<<"$1" | paste -sd+ - | bc
