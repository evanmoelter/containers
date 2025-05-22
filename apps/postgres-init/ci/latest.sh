#!/usr/bin/env bash
version=$(curl -s "https://dl-cdn.alpinelinux.org/alpine/v3.19/main/x86_64/APKINDEX.tar.gz" | tar -xzO 2>/dev/null | grep -P "P:postgresql16-client\n(.*\n)*?V:\K[^\n]+" --only-matching)
version="${version%%_*}"
version="${version%%-*}"
printf "%s" "${version}"
