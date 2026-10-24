#!/bin/bash
#--------------------------------------------------------------------
# 25. Print a star pyramid
# Usage: ./25-star-pyramid.sh [height]
#--------------------------------------------------------------------

n="${1:-5}"

# every pattern is spaces THEN stars: spaces = n-i, stars = i
for (( i=1; i<=n; i++ )); do
    for (( j=0; j<n-i; j++ )); do printf ' '; done
    for (( k=0; k<i; k++ )); do printf '*'; done
    echo
done

# ---- the one-liner version, for when they ask you to shorten it ----
# seq "$1" | while read i; do printf "%$(( $1 - i ))s"; printf '*%.0s' $(seq "$i"); echo; done
