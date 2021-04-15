#!/bin/sh

export PATH="{CURRENT}:$PATH"

idfenv() {
    case $1 in
        local)
            if [[ $# -lt 2 ]]; then
                command idfenv "$@"
                return
            fi
            p="{CURRENT}/shims/$2/esp-idf"
            if [[ -e "$p" ]]; then
                export IDF_PATH="$p"
                source "$IDF_PATH/export.sh"
                PS1="[ESP-IDF: $2] $PS1"
            else
                echo 'not installed version'
            fi
            ;;
        *)
            command idfenv "$@"
            ;;
    esac
}

