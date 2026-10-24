#!/bin/bash
#--------------------------------------------------------------------
# 27. Report whether a number is positive, negative or zero
# Usage: ./27-positive-negative-zero.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

if (( n > 0 )); then
    echo "positive"
elif (( n < 0 )); then
    echo "negative"
else
    echo "zero"
fi

# ---- the one-liner version, for when they ask you to shorten it ----
# (( $1 )) && { (( $1 > 0 )) && echo positive || echo negative; } || echo zero