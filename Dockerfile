FROM alpine:latest

RUN set -ex \
    && apk add --no-cache rclone --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && /usr/bin/rclone version

ENTRYPOINT ["/usr/bin/rclone"]
