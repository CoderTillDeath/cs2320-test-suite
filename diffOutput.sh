#!/bin/bash
source settings.sh

./files/compile.sh
./files/diff.sh $1
