#!/bin/bash
#--------------------------------------------------------------------
# 11. Check whether a string is a palindrome
# Usage: ./11-palindrome-string.sh <string>
#--------------------------------------------------------------------

s="${1:?usage: $0 <string>}"

r=$(rev <<<"$s")

if [[ "${s,,}" == "${r,,}" ]]; then
    echo "$s is a palindrome"
else
    echo "$s is not a palindrome"
fi

# ---- the one-liner version, for when they ask you to shorten it ----
# [[ "${1,,}" == "$(rev <<<"${1,,}")" ]] && echo palindrome || echo no
