#!/bin/bash

source ./settings.sh

letter=$1
cat "../${testDirectory}${outputFileFormat/&/$letter}"
