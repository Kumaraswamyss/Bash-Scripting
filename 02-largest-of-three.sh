#!/bin/bash
#===========================================
# 02. Find the largest of three numbers
# Usage: ./02-largest-of-three.sh <a> <b> <c>
#============================================

a="${1:?usage: $0 <a> <b> <c>}"; b="${2:?}"; c="${3:?}"

max=$a
(( b > max )) && max=$b
(( c > max )) && max=$c

echo "largest: $max"

# ---- the one-liner version, for when they ask you to shorten it ----
# printf '%s\n' "$@" | sort -n | tail -1
