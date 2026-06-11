#!/bin/bash

CWD=$PWD

# Technically script dir but the same in our case
PROJECT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $PROJECT_DIR

if [[ -d build ]] then
  rm -rf build
fi

cmake -S . -B build
cmake --build build --config Release

cd $CWD
