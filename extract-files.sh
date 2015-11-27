#!/bin/sh

set -e

export DEVICE=d2dcm
export VENDOR=samsung
./../d2-common/extract-files.sh $@
