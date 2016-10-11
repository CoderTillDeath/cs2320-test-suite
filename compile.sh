#!/bin/bash

source ./settings.sh
g++ -std=c++11 -o ${fileName} -I ./ *.cpp
