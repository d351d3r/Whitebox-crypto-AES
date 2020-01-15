#!/bin/bash
eval "${MATRIX_EVAL}"
bash install-ntl-cached.sh
find /tmp/coverity-scan-analysis
ls -las ~/build/ph4r05/Whitebox-crypto-AES
find  /home/travis/build/ph4r05/Whitebox-crypto-AES/cov-int

/tmp/coverity-scan-analysis/cov-configure --comptype gcc --compiler /usr/bin/gcc-4.9

cmake .
make clean
exec make main
