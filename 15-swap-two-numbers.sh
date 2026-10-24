#!/bin/bash
#--------------------------------------------------------------------
# 15. Swap two numbers
# Usage: ./15-swap-two-numbers.sh <a> <b>
#--------------------------------------------------------------------

a="${1:?usage: $0 <a> <b>}"; b="${2:?}"

echo "before: a=$a b=$b"

#with a temporary variable - the safe way
t=$a; a=$b; b=$t

echo "after: a=$a b=$b"

# ---- the one-liner version, for when they ask you to shorten it ----
# read a b <<<"$2 $1"     # or without a temp (overflows on big values):
# #   a=$((a+b)); b=$((a-b)); a=$((a-b))
