#!/usr/bin/env bash

version="$1"

cd "$(cd "$(dirname "$0")" && pwd)" || exit 1

mkdir -p "shims/$version"
cd "shims/$version" || exit 1

git clone --recursive --depth 1 -b "$version" "https://github.com/espressif/esp-idf.git"

