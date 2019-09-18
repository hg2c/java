#!/usr/bin/env bash
set -euo pipefail

db() {
    cd /Users/tao.luo/Entropy/ddd/ddd-architecture-samples/java/jersey-with-mybatis
    echo haha
    gradle clean build -x test
    echo fofo
}

domain() {
    cd /Users/tao.luo/Entropy/ddd/ddd-architecture-samples/java/domain
    gradle clean build -x test
}

case $1 in
    db)
        db
        ;;
    domain)
        domain
        ;;
    h|help|*)
        echo "HELP"
        exit
        ;;
esac
