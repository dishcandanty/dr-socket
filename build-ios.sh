#!/bin/bash

BUILD_TYPE="Debug"
OS_TYPE="ios"

if [ $1 = "--release" ]; then
  BUILD_TYPE="Release"
fi

cmake -S. -Bcmake-build-${OS_TYPE}-${BUILD_TYPE} -DCMAKE_BUILD_TYPE=${BUILD_TYPE} -DAPPLE_IOS=TRUE
cmake --build cmake-build-${OS_TYPE}-${BUILD_TYPE} -j 8