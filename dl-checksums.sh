#!/usr/bin/env bash
set -e
MIRROR=https://www.apache.org/dist/couchdb/source

# https://www.apache.org/dist/couchdb/source/3.1.2/apache-couchdb-3.1.2.tar.gz.sha256

dl_ver() {
    local -r ver=$1
    local -r url="${MIRROR}/${ver}/apache-couchdb-${ver}.tar.gz.sha256"
    printf "  # %s\n" $url
    printf "  '%s': sha56:%s\n" $ver $(curl -sSL $url | awk '{print $1}')
}

dl_ver ${1:-3.1.2}
