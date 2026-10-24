#!/bin/bash
#--------------------------------------------------------------------
# 23. Remove duplicate values from a list
# Usage: ./23-remove-duplicates.sh <v1> <v2> ...
#--------------------------------------------------------------------

(( $# )) || { echo "usage: $0 <v1> <v2> ..." >&2; exit 1; }

echo "unique values:"
printf '%s\n' "$@" | sort | uniq

echo
echo "only the duplicates:"
printf '%s\n' "$@" | sort | uniq -d

echo
echo "with counts:"
printf '%s\n' "$@" | sort | uniq -c

# ---- the one-liner version, for when they ask you to shorten it ----
# printf '%s\n' "$@" | sort -u      # uniq only collapses ADJACENT lines, so sort first
