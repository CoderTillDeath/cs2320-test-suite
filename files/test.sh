#!/bin/bash

source ./settings.sh

letter=$1
output="$(./files/output.sh ${letter} | diff - "../$testDirectory${outputFileFormat/&/${letter}}")"
echo -n "Test $letter: "

if [ -n "$output" ]; then
   printf "\033[0;31mFAILED\033[0m\n"
else
   printf "\033[0;32mPASSED\033[0m\n" 
fi
