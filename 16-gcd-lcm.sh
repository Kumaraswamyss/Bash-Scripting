#!/bin/bash
#--------------------------------------------------------------------
# 16. Greatest common divisor and lowest common multiple
# Usage: ./16-gcd-lcm.sh <a> <b>
#--------------------------------------------------------------------

a="${1:?usage: $0 <a> <b>}"; b="${2:?}"

x=$a; y=$b

# Euclide: replace (a,b) with (b, a mod b) until b is 0
while (( b != 0 )); do
    t=$(( a % b )); a=$b; b=$t
done

echo "GCD: $a"
echo "LCM: $(( x / a * y ))" # divide BEFORE multiplying, to avoid overflow

# ---- the one-liner version, for when they ask you to shorten it ----
# gcd(){ (( $2 )) && gcd "$2" $(( $1 % $2 )) || echo "$1"; }; gcd "$1" "$2"
