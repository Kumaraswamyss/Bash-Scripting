#!/bin/bash
#--------------------------------------------------------------------
# 21. Largest and second largest in a list
# Usage: ./21-second-largest.sh <n1> <n2> ...
#--------------------------------------------------------------------

(( $# >= 2 )) || { echo "usage: $0 <n1> <n2> ..." >&2; exit 1; }

max=$1
sec=
for v in "$@"; do
    if (( v > max )); then
        sec=$max        # the old max becomes second
        max=$v
    elif [[ -z "$sec" ]] || (( v > sec && v != max )); then
        sec=$v
    fi
done

echo "largest: $max"
echo "second: $sec"

# ---- the one-liner version, for when they ask you to shorten it ----
# printf '%s\n' "$@" | sort -rnu | sed -n 2p
