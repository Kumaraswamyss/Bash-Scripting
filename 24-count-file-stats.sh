#!/bin/bash
#--------------------------------------------------------------------
# 24. Count lines, words and characters in a file
# Usage: ./24-count-file-stats.sh <file>
#--------------------------------------------------------------------

f="${1:?usage: $0 <file>}"
[[ -f "$f" ]] || { echo "no such file: $f" >&2; exit 1; }

# the redirect stops wc printing the filename beside the number
echo "lines: $(wc -l < "$f")"
echo "words: $(wc -w < "$f")"
echo "chars: $(wc -c < "$f")"

# ---- the one-liner version, for when they ask you to shorten it ----
# wc "$1"      # lines, words, bytes in one go
