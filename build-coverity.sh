#!/bin/bash
eval "${MATRIX_EVAL}"
bash install-ntl-cached.sh
# find /tmp/coverity-scan-analysis
ls -las ~/build/ph4r05/Whitebox-crypto-AES
# find  /home/travis/build/ph4r05/Whitebox-crypto-AES/cov-int

/tmp/coverity-scan-analysis/cov-analysis-linux64-2019.03/bin/cov-configure --gcc

cmake .
make clean
exec make main

