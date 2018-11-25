#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -al | grep ^[-] | wc -l)
echo "How many files would you guess are in the current directoy? Type a guess and hit Enter:"
read guess
while [[ $guess -ne $count ]]
do
  if [[ $guess -lt $count ]]
  then
    echo "That is too low. Guess again:"
    read next_guess
    guess=$next_guess
  else
    echo "That is too high. Guess again:"
    read next_guess
    guess=$next_guess
  fi
done
echo "Congratulations! You guessed right."
