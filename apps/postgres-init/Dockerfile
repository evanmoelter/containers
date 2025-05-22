FROM ghcr.io/evanmoelter/alpine:rolling@sha256:cf864e87d4654d788c482e52e2ea1c54536aa25a8e1d251bf0f7fc6ee18006de

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates postgresql16-client~"${VERSION}"

USER kah

COPY ./apps/postgres-init/entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/postgres/postgres"
