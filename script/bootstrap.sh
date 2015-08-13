#!/bin/bash -e

#
# bootstrap.sh
# Initializes the libgit2 submodule as a sparse checkout, skipping files that don't apply to Apple platforms.
#

git config core.sparseCheckout true

cp sparse-checkout .git/modules/libgit2/info/sparse-checkout
git submodule update --init
