FROM alpine:latest

RUN set -ex \
    && apk add --no-cache rclone \
    && /usr/bin/rclone version

ENTRYPOINT ["/usr/bin/rclone"]
