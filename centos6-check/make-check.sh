#!/bin/bash 
REPO=https://github.com/universal-ctags/ctags.git

set -e

cd /tmp

rm -rf ./ctags

: &&
    git clone ${REPO} &&
    cd ctags &&
    bash ./autogen.sh &&
    ./configure &&
    make &&
    make check TRAVIS=1 > >(tee ../LOG)
