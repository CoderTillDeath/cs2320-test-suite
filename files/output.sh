#!/bin/bash

source settings.sh
../$fileName "input=../$testDirectory${inputFileFormat/&/$1}"
