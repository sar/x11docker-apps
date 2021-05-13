# ----------------
# Image: alpine
# Docs: https://hub.docker.com/_/alpine
# ----------------

FROM alpine:latest

RUN apk update --no-cache && \
    apk add --no-cache \
    firefox \
    ca-certificates \
    mesa-gl \
    mesa-dri-intel \
    mesa-egl \
    pulseaudio \
    pulseaudio-alsa \
    alsa-lib \
    alsa-plugins-pulse \
    ttf-dejavu

CMD [ "/bin/sh", "-c", "firefox" ]
