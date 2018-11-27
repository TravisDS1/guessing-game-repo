#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
  count=$(ls -al | grep ^[-] | wc -l)
  echo "How many files would you guess are in the current directory? Type a guess and hit Enter:"
  read guess
  while [[ $guess != $count ]]
  do
    if [[ $guess =~ ^[0-9]+$ ]]  # conditional to accept whole number user inputs only
    then
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
    else
      echo "Invalid input. Try again:"
      read next_guess
      guess=$next_guess
    fi
  done
  echo "Congratulations! You guessed right."
}

guessinggame   # calls function guessingame to run
