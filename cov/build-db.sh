#!/usr/bin/env bash
set -euo pipefail

CODEBASE=/Users/tao.luo/Entropy/ddd/ddd-architecture-samples/java/jersey-with-mybatis

cd $CODEBASE
gradle clean build -x test
