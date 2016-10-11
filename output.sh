#!/bin/bash

source settings.sh

letter=$1
./${fileName} "input=test-cases/test-${letter}.1.txt"

