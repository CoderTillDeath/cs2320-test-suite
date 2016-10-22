#!/bin/bash
source ./settings.sh
./files/compile.sh

indexOf=$(expr index "$letters" "$1")
myLetters=${letters:0:indexOf}

for A in $myLetters ; 
    do ./files/test.sh ${A}
        done
