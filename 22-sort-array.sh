#!/bin/bash
#--------------------------------------------------------------------
# 22. Sort a list of numbers
# Usage: ./22-sort-array.sh <n1> <n2> ...
#--------------------------------------------------------------------

(( $# )) || { echo "usage: $0 <n1> <n2> ..." >&2; exit 1; }

# printf '%s\n' "$@" turns an array into lines - this idioms unlocks every unix tool
sorted=( $(printf '%s\n' "$@" | sort -n) )

echo "${sorted[@]}"

# ---- the one-liner version, for when they ask you to shorten it ----
# printf '%s\n' "$@" | sort -n | paste -sd' ' -
