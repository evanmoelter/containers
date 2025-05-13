FROM ghcr.io/evanmoelter/alpine:rolling@sha256:2cffb2d5a642ee3b9353d1749f03432faf7abe44aab4da70e6d4d6bc3f7317a9

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
