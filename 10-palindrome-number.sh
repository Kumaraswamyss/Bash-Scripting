#!/bin/bash
#--------------------------------------------------------------------
# 10. Check whether a number is a palindrome
# Usage: ./10-palindrome-number.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

orig=$n
rev=0
while (( n > 0 )); do
    rev=$(( rev * 10 + n % 10 ))
    n=$(( n / 10 ))
done

if (( rev == orig )); then
    echo "$orig is a palindrome"
else
    echo "$orig is not a palindrome"
fi

# ---- the one-liner version, for when they ask you to shorten it ----
# [[ "$1" == "$(rev <<<"$1")" ]] && echo palindrome || echo no