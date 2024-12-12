#!/usr/bin/env bash

cd /tmp || exit 1
wget https://ftp.gnu.org/gnu/make/make-"${1:?}".tar.gz
tar xvzf /tmp/make-"${1:?}".tar.gz.1
cd /tmp/make-"${1:?}" || exit 1
./configure
bash ./build.sh
sudo install ./make /usr/local/bin/make
cd - || exit 1
rm -rf /tmp/make-"${1:?}"{,.tar.gz}
