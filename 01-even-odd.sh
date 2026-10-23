#!/bin/bash
#--------------------------------------------------------------------
# 01. Check whether a number is even or odd
# Usage: ./01-even-odd.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

if (( n % 2 == 0 )); then
    echo "$n is even"
else
    echo "$n is odd"
fi


# ---- the one-liner version, for when they ask you to shorten it ----
# (( $1 % 2 )) && echo odd || echo even
