FROM alpine:3.14

RUN apk add --no-cache \
    gcc \
    git \
    libzip \
    openssl-dev \
    openssl \
    luajit 
RUN git clone https://git.zx2c4.com/cgit /cgit-src
RUN cd /cgit-src
RUN git submodule init
RUN git submodule update
# debug
RUN ls