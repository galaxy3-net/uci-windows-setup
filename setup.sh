#!/usr/bin/env bash

stat ~/galaxy3 || git clone https://github.com/galaxy3-net/galaxy3.git ~/galaxy3 -d thedr

export SOURCE="source ~/galaxy3/env"

egrep "${SOURCE}" ~/.bash_profile || echo "${SOURCE}" >> ~/.bash_profile

echo "Now run the following command:"
echo "source ~/.bash_profile"