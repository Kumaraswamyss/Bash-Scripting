#!/bin/bash
#--------------------------------------------------------------------
# 26. Report whether a path is a file or a directory
# Usage: ./26-file-or-directory.sh <path>
#--------------------------------------------------------------------

p="${1:?usage: $0 <path>}"

if [[ -d "$p" ]]; then
    echo "$p is a directory"
elif [[ -f "$p" ]]; then
    echo "$p is a file, $(stat -c %s "$p") bytes"
else
    echo "$p does not exist"
    exit 1
fi

# other tests: -e exists  -s non-empty  -r -w -x permissions  -L symlink


# ---- the one-liner version, for when they ask you to shorten it ----
# [[ -d "$1" ]] && echo dir || { [[ -f "$1" ]] && echo file || echo none; }
