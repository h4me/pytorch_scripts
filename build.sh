#!/bin/bash

d="pytorch"

if [ ! -d $d ]; then
    echo "Directory does not exist $d"
    exit
fi


cd $d

export DUSE_CUDA=OFF
#export MAX_JOBS=12


pip uninstall torch

export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
python setup.py develop


#LD_LIBRARY_PATH=/lib/x86_64-linux-gnu/ python
python setup.py bdist_wheel

