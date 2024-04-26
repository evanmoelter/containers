#!/usr/bin/env bash
version=$(curl -sX GET "https://pkgs.alpinelinux.org/packages?name=openssh-sftp-server&branch=v3.19&arch" | grep -oP '(?<=<td class="version">)[^<]*' 2>/dev/null)
version="${version%%_*}"
version="${version%%-*}"
# TODO figure out proper versioned builds
version="9.6"
printf "%s" "${version}"
