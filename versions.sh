#!/usr/bin/env bash

versions_repository='https://github.com/SiLeader/idfenv-versions.git'

current="$(cd "$(dirname "$0")";pwd)"

versions="$current/versions"

function update_versions() {
    cd "$versions"
    git pull origin master
}

function fetch_versions() {
    cd "$current"
    git clone $versions_repository versions
}

while getopts 'fnh' OPT; do
    case $OPT in
        f) full_info=1
            ;;
        n) no_update=1
            ;;
        h) ;;
        \?) ;;
    esac
done

if [[ $no_update = 1 ]]; then
    if [[ -d "$versions" ]]; then
        update_versions
    else
        fetch_versions
    fi
fi

cd "$versions"

if [[ $full_info = 1 ]]; then
    awk -F ',' -v 'OFS= ' '{print $1,$2}' < idf_versions.csv
    exit
fi

awk -F ',' '{print $1}' < idf_versions.csv


