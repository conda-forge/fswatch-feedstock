#!/bin/bash

if [[ "${target_platform}" == linux-* ]]; then
  export LDFLAGS="-lpthread"
fi

./configure --prefix="$PREFIX"
make
make check
make install
