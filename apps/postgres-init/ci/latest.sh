#!/usr/bin/env bash
version=$(curl -s "https://dl-cdn.alpinelinux.org/alpine/v3.19/main/x86_64/APKINDEX.tar.gz" | tar -xzO 2>/dev/null | awk 'BEGIN{RS=""; ORS="\n\n"} {gsub(/\n/, " "); print}' | grep --text -P "P:postgresql16-client(.*)V:\K[^\s]+" --only-matching)
version="${version%%_*}"
version="${version%%-*}"
printf "%s" "${version}"
