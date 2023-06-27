#!/usr/bin/env bash
set -e

# directory "build" already exists
cd build

cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} ..

cmake --build . --target install
