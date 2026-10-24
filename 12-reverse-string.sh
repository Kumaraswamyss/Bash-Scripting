#!/bin/bash
#--------------------------------------------------------------------
# 12. Reverse a string without using rev
# Usage: ./12-reverse-string.sh <string>
#--------------------------------------------------------------------

s="${1:?usage: $0 <string>}"

out=""
for (( i=${#s}-1; i>=0; i-- )); do
    out+="${s:i:1}"
done

echo "$out"

# ---- the one-liner version, for when they ask you to shorten it ----
# fold -w1 <<<"$1" | tac | tr -d '\n'; echo
