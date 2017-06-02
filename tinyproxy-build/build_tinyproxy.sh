#!/bin/bash

echo 'Building custom tinyproxy binary'

# clone repo
git clone https://github.com/RateHighway/tinyproxy.git

# change to work dir
cd tinyproxy

# configure
sh autogen.sh
./configure \
  --prefix=/usr \
  --localstatedir=/var \
  --sysconfdir=/etc \
  --disable-dependency-tracking \
  --enable-reverse

# build
make
strip src/tinyproxy

cp src/tinyproxy /output

echo 'Done'
