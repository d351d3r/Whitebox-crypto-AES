#!/bin/bash
eval "${MATRIX_EVAL}"
bash install-ntl-cached.sh
bash build.sh
echo "Cov build finished"
