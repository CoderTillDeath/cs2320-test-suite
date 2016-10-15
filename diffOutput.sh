#!/bin/bash
source settings.sh

./files/compile.sh
./files/output.sh $1 | diff - "../$testDirectory${outputFileFormat/&/$1}"
