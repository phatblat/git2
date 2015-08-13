#!/bin/bash -e

#
# bootstrap.sh
# Initializes the libgit2 submodule as a sparse checkout, skipping files that don't apply to Apple platforms.
#

SCRIPT_DIR=$(dirname "$0")

git config core.sparseCheckout true

cp "${SCRIPT_DIR}/sparse-checkout" "${SCRIPT_DIR}/../.git/modules/libgit2/info/sparse-checkout"
git submodule update --init
