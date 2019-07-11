#!/bin/bash
# Bash Menu Script Example
#for i in {0..15}; do printf "\x1b[38;5;${i}m███ color%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done
#for i in {0..15}; do printf "\x1b[38;5;${i}m███\x1b[0m \x1b[1;37;mColor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done
for i in {0..15}; do printf "[\x1b[38;5;${i}m██\x1b[0m] Color%-5i" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done
