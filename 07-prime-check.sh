#!/bin/bash
#--------------------------------------------------------------------
# 07. Check whether a number is prime
# Usage: ./07-prime-check.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

(( n < 2 )) && { echo "$n is not prime"; exit 0; }

for (( i = 2; i*i<=n; i++ )); do
    (( n % i == 0 )) && { echo "$n is not prime"; exit 0;}
done

echo "$n is prime"

# ---- the one-liner version, for when they ask you to shorten it ----
# factor "$1" | awk '{print (NF==2) ? "prime" : "not prime"}'

