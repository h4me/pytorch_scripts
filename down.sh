#!/bin/bash

git clone --recursive https://github.com/h4me/pytorch
cd pytorch
# if you are updating an existing checkout
git submodule sync
git submodule update --init --recursive


