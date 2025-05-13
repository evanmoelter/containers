FROM ghcr.io/evanmoelter/alpine:rolling@sha256:2cffb2d5a642ee3b9353d1749f03432faf7abe44aab4da70e6d4d6bc3f7317a9
ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

# Steps done in one RUN layer:
# - Install packages
# - OpenSSH needs /var/run/sshd to run
# - Remove generic host keys, entrypoint generates unique keys
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache bash shadow@community openssh-server-pam openssh-sftp-server && \
    ln -s /usr/sbin/sshd.pam /usr/sbin/sshd && \
    mkdir -p /var/run/sshd && \
    rm -f /etc/ssh/ssh_host_*key*

COPY ./apps/sftp/files/sshd_config /etc/ssh/sshd_config
COPY ./apps/sftp/files/create-sftp-user /usr/local/bin/
COPY ./apps/sftp/files/entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
