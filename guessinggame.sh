#! /bin/bash

function main {
  files=$(ls -1A | wc -l)

  echo "Please enter the no of files in the directory: "
  read guess
  while [[ guess -ne files ]]
  do
    if [[ guess -gt files ]]
    then
      echo "Your guess is too high, please try a lower number."
    else
      echo "Your guess is too low, please try a higher number."
    fi
    echo "Please enter number of files again: "
    read guess
  done

  echo "Congratulations! you guessed the correct number of files. There are $guess files in the directory."
  echo "Here's a list:"
  ls -1A
  echo "Good bye."
}

main


