#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/..

npm install && npm run pack
