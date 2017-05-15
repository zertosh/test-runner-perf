#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

for testdir in 'jasmine' 'mocha' 'jest'; do
  echo "$testdir"
  du -d 0 -h "$testdir/node_modules"
  for i in {1..5}; do
    /usr/bin/time "$testdir/run.sh" > /dev/null
  done
done
