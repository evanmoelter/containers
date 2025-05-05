FROM ghcr.io/evanmoelter/alpine:rolling@sha256:b4dcecaa3ac9f9294fa8a74fa5fb7eb82b56b254099c7f8c2a0fb4356dfeb5e0

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
