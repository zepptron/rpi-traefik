FROM hypriot/rpi-alpine
MAINTAINER zepptron <https://github.com/zepptron>

RUN apk update && \
    apk upgrade && \
    apk add ca-certificates && \
    rm -rf /var/cache/apk/*
ADD https://github.com/containous/traefik/releases/download/v1.5.0-rc2/traefik_linux-arm /traefik
RUN chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]