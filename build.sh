#!/bin/bash
set -e

PATH="/opt/toolchains/tc_arm-none-eabi/bin:${PATH}"

rm -rf src/config
make configs

make STM32F7X2 STM32F745 STM32F405 STM32F411
make FOXEERF722V4 FOXEERF722V2 MATEKF722SE
