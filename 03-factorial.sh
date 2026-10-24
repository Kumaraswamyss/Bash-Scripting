#!/bin/bash
#=================================================
# 03. Factorial of a number (loop)
# Usage: ./03-factorial.sh <number>
#=================================================

n="${1:?usage: $0 <number>}"

fact=1
for (( i=2; i<=n; i++ )); do
	fact=$(( fact * i ))
done

echo "$n! = $fact"

# ---- the one-liner version, for when they ask you to shorten it ----
# seq 1 "$1" | paste -sd'*' - | bc      # arbitrary precision, no 64-bit overflow
