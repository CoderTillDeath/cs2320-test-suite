#!/bin/bash

source settings.sh
cmd="../$fileName input=../${testDirectory}${inputFileFormat/&/$1}"
eval $cmd
