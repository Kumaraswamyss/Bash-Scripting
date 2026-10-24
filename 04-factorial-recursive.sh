#!/bin/bash
#--------------------------------------------------------------------
# 04. Factorial using recursion
# Usage: ./04-factorial-recursive.sh <number>
#--------------------------------------------------------------------

fact() {
    (( $1 <= 1 )) && { echo 1; return; }
    echo $(( $1 * $(fact $(( $1 - 1 )) ) ))
}

n="${1:?usage: $0 <number>}"
echo "$n! = $(fact "$n")"
