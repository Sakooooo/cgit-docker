FROM alpine:3.14

RUN apk add --no-cache \
    gcc \
    git \
    libzip \
    openssl \ 
    luajit \