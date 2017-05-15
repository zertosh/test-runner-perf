#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

./node_modules/.bin/jest --json --env node test.js
