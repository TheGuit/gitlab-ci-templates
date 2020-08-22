#!/bin/bash

if [ $# -lt 3 ]; then
    echo "Usage deb-helper src dest version"
    exit 1
fi

INPUT="$1"
OUTPUT="$2"
VERSION="$3"

cd "$INPUT"
sed -i "s/<version>/${VERSION}/g" "${INPUT}/debian/changelog" && \
dpkg-buildpackage -b -uc
cp "*.deb" "*.changes" "*.buildinfo" "$OUTPUT/"