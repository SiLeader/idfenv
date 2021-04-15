#!/usr/bin/env bash

mkdir -p status
curl -o "status/tags.json" https://api.github.com/repos/espressif/esp-idf/tags &> /dev/null
curl -o "status/branches.json" https://api.github.com/repos/espressif/esp-idf/branches &> /dev/null

