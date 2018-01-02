#!/bin/bash
eval "${MATRIX_EVAL}"
bash install-ntl-cached.sh

cmake .
make clean
exec make main

