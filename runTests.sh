#!/bin/bash
./compile.sh

for A in a b c d e f g h i j k l m n o p q r s t ; 
    do echo "Test ${A}";
        ./test.sh ${A}
        echo "" ;
        done
