#!/bin/bash
#--------------------------------------------------------------------
# 18. Print the multiplication table of a number
# Usage: ./18-multiplication-table.sh <number>
#--------------------------------------------------------------------

n="${1:?usage: $0 <number>}"

for i in {1..10}; do
    printf '%d x %d = %d\n' "$n" "$i" "$(( n * i ))"
done

# ---- the one-liner version, for when they ask you to shorten it ----
# awk -v n="$1" 'BEGIN{for(i=1;i<=10;i++) printf "%d x %d = %d\n", n, i, n*i}'
