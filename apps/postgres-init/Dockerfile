FROM ghcr.io/evanmoelter/alpine:rolling@sha256:78d21d0a1c5957d978c06c1dccb444ae34f4ac690f800e3bf66474559a09fef6

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
