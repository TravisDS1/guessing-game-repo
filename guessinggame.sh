#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -al | grep ^[-] | wc -l)
echo "How many files would you guess are in the current directoy? Type a guess and hit Enter:"
read guess
while [[ $guess -ne $count ]]
do
