#!/bin/bash
#--------------------------------------------------------------------
# 17. Check whether a year is a leap year
# Usage: ./17-leap-year.sh <year>
#--------------------------------------------------------------------

y="${1:?usage: $0 <year>}"

# divisible by 4, NOT by 100, UNLESS also by 400
if (( (y % 4 == 0 && y % 100 !=0) || y % 400 == 0 )); then
    echo "$y is a leap year"
else
    echo "$y is not a leap year"
fi

# ---- the one-liner version, for when they ask you to shorten it ----
# date -d "$1-02-29" &>/dev/null && echo leap || echo "not leap"
