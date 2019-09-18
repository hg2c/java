#!/usr/bin/env bash
set -euo pipefail

COV_BUILD=/opt/cov-analysis-macosx-2019.03/bin/cov-build
CODEBASE=/Users/tao.luo/Entropy/ddd/ddd-architecture-samples/java/domain

inter_dir=/Users/tao.luo/Entropy/hg2c/sh/test/interdir
tmp_dir=/Users/tao.luo/Entropy/hg2c/sh/test/tmpdir

build:domain() {
    cd $CODEBASE
    gradle clean build -x test
}

coverity() {
    BUILDER=$*
    $COV_BUILD --tmpdir $tmp_dir --dir $inter_dir $BUILDER
}

coverity /Users/tao.luo/Entropy/hg2c/sh/test/build-domain.sh
# coverity /Users/tao.luo/Entropy/hg2c/sh/test/build.sh db

# 3331 /opt/cov-analysis-macosx-2019.03/bin/cov-build --dir cov-int
# 3332  export BUILD="gradle clean build -x test"
# 3333  echo $BUILD
# 3334  /opt/cov-analysis-macosx-2019.03/bin/cov-build --dir cov-int $BUILD
# 3335  /opt/cov-analysis-macosx-2019.03/bin/cov-build --dir cov-int "$BUILD"
# 3336  /opt/cov-analysis-macosx-2019.03/bin/cov-build --dir cov-int $BUILD
# 3337  export BUILD=gradle clean build -x test
# 3338  export BUILD="clean build -x test"
# 3339  /opt/cov-analysis-macosx-2019.03/bin/cov-build --dir cov-int gradle $BUILD


# logger:info() {
#     echo $1
#     echo $2
# }

# FOO="-rnv --exclude='.*'"
# logger:info $FOO
# set -- $FOO
# logger:info $@
