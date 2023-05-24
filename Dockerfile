FROM alpine:3.14

RUN apk add --no-cache \
    gcc \
    git \
    libzip \
    openssl-dev \
    openssl \
    luajit \
    make \
    curl \
    apache2 \ 
    libc-dev \
    zlib \
    zlib-dev \
    libintl \
    gettext \
    gettext-dev \
    gettext-libs 
RUN git clone https://git.zx2c4.com/cgit /cgit-src
WORKDIR /cgit-src
RUN git submodule init
RUN git submodule update
RUN make NO_REGEX=NeedsStartEnd 
RUN make install