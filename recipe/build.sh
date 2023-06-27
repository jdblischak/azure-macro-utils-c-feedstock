#!/usr/bin/env bash
set -e

echo "CMAKE_ARGS=$CMAKE_ARGS"

mkdir -p build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    ..

cat CMakeCache.txt

cmake --build . --config Release --target install
