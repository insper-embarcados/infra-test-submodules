#!/bin/bash

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`


 git submodule add git@github.com:insper-embarcados/container-essentials.git container-essentials-$BASENAME || git pull --recurse-submodules && code container-essentials-$BASENAME
