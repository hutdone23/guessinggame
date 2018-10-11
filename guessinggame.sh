#!/usr/bin/env bash
#File: guessinggame.sh

function countFilesInDirectory {
    numberOfFilesWithTotalLine=$(ls -l | egrep -v "^d" | wc -l)
    numberOfFilesWithTotal=$(expr $numberOfFilesWithTotalLine - 1)

    echo $numberOfFilesWithTotal
}

echo "Welcome the guessing game."
echo "Please guess how many files are in the current directory.  Type in a number and press Enter:"

read response
echo "You entered: $response"

fileCount=$(countFilesInDirectory)

while [[ $response -ne $fileCount ]]
do
    if [[ $response -gt $fileCount ]]
    then
        echo "Your guess was too high.  Please try again."
    elif [[ $response -lt $fileCount ]]
    then
        echo "Your guess was too low.  Please try again."
    fi

    echo
    echo "Please guess how many files are in the current directory.  Type in a number and press Enter:"
    read response
    echo "You entered: $response"
done

echo "**************"
echo "**************"
echo "You guessed correctly!  Thanks for playing."
