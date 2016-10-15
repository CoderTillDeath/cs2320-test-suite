#!/bin/bash

source ./settings.sh

./files/compile.sh

./files/test.sh $1
