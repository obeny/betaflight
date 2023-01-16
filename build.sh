#!/bin/bash

set -e

PATH="/opt/toolchains/tc_arm-none-eabi/bin:${PATH}"

rm -rf obj
rm -rf src/config
make configs

CONFIG_OPTS="-DUSE_LED_STRIP -DUSE_LAUNCH_CONTROL -DUSE_RACE_PRO"
TARGETS="FOXEERF722V4 FOXEERF722V2"

for i in ${TARGETS}
do
    echo ">>> building: $i"
    make EXTRA_FLAGS="${CONFIG_OPTS}" $i
done
