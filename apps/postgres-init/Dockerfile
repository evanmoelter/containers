FROM ghcr.io/evanmoelter/alpine:rolling@sha256:e1be3e13d1be5f17663ca989bc66653b22a3d4a7f13a7a17db9ba71a4084d721

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
