#!/bin/bash

for i in *.html; do
    echo '=============================================' &&
    echo 'S/N ' &&
    cat "$i" | pup | grep 'Hard Disk Serial Number' -A 8 | tail -1 &&
    echo 'Health: ' &&
    cat "$i" | pup | grep 'Health' -A 23 | tail -1
    echo 'Lifetime Writes: ' &&
    cat "$i" | pup | grep 'Lifetime Writes' -A 8 | tail -11 | tail -n 1 &&
    echo 'Power On Time: ' &&
    cat "$i" | pup | grep 'Power On Time' -A 8 | tail -11 | tail -n 1 &&
echo '============================================='
done
