#!/bin/bash
#--------------------------------------------------------------------
# 20. Count the vowels in a string
# Usage: ./20-count-vowels.sh <string>
#--------------------------------------------------------------------

s="${1:?usage: $0 <string>}"

count=0
for (( i=0; i<${#s}; i++ )); do
    case "${s:i:1}" in
    [aeiouAEIOU]) (( count++ )) ;;
    esac
done

echo "vowels: $count"

# ---- the one-liner version, for when they ask you to shorten it ----
# tr -cd 'aeiouAEIOU' <<<"$1" | wc -c
