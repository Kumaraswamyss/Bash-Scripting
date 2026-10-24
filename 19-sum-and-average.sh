#!/bin/bash
#--------------------------------------------------------------------
# 19. Sum and average of any number of values
# Usage: ./19-sum-and-average.sh <n1> <n2> ...
#--------------------------------------------------------------------

(( $# )) || { echo "usage: $0 <n1> <n2> ..." >&2; exit 1; }

sum=0
for v in "$@"; do
    sum=$(( sum + v ))
done

echo "count: $#"
echo "sum: $sum"
echo "avg: $(echo "scale=2; $sum / $#" | bc)" # bash truncates, so use bc

# ---- the one-liner version, for when they ask you to shorten it ----
# printf '%s\n' "$@" | awk '{s+=$1} END{print "sum", s, "avg", s/NR}'
