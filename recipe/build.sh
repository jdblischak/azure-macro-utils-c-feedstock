#!/usr/bin/env bash
set -e

mkdir -p build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    ..

cmake --build . --target install
