#!/bin/bash
source ./settings.sh
./files/compile.sh

myLetters=${letters/$1*/$1}

for A in $myLetters ; 
    do ./files/test.sh ${A}
        done
