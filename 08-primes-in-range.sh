#!/bin/bash
#--------------------------------------------------------------------
# 08. List every prime in a range
# Usage: ./08-primes-in-range.sh [from] [to]
#--------------------------------------------------------------------

from="${1:-2}"; to="${2:-50}"

for (( n=from; n<=to; n++ )); do
    p=1
    (( n< 2 )) && p=0
    for (( i=2; i*i<=n; i++ )); do
        (( n % i == 0 )) && { p=0; break; }
    done
    (( p )) && printf '%d' "$n"
done
echo

# ---- the one-liner version, for when they ask you to shorten it ----
# seq "$1" "$2" | factor | awk 'NF==2 {print $2}'
