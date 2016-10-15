#!/bin/bash
source ./settings.sh
./files/compile.sh

for A in $letters ; 
    do ./files/test.sh ${A}
        done
