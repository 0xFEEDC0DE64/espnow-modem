#!/bin/bash

if [[ -z "$IDF_PATH" ]]
then
    source export.sh --skip-source-check
fi

export QTC_CLANG_CMD_OPTIONS_BLACKLIST='--target=xtensa-esp32-elf;-mlongcalls;-fstrict-volatile-bitfields;-fno-tree-switch-conversion;-fstack-reuse=all'
qtcreator "espnow-modem" 2>&1 >/dev/null &
