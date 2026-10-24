#!/bin/bash
#--------------------------------------------------------------------
# 09. Reverse the digits of a number
# Usage: ./09-reverse-number.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

rev=0
while (( n > 0 )); do
    rev=$((rev * 10 + n % 10 ))
    n=$(( n / 10 ))
done

echo "$rev"

# ---- the one-liner version, for when they ask you to shorten it ----
# rev <<<"$1"     # text reversal: 1200 becomes 0021, not 21
