#!/usr/bin/env bash

version="$1"

cd "$(cd "$(dirname "$0")" && pwd)" || exit 1

cd "shims/$version/esp-idf" || exit 1

./install.sh

