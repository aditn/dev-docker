FROM alpine:latest AS build 

RUN apk update && \
    apk add apt \
        bash
RUN apk add --no-cache \
        build-base=0.5-r3 \
        cmake=3.26.5-r0
RUN apk add --no-cache \
        libstdc++
RUN apk add --no-cache \
        git \
        wget

RUN addgroup -S adit && adduser -S adit -G adit
USER adit

# ENTRYPOINT [ "/app" ]