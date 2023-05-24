FROM ubuntu:22.04

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y \
    gcc \
    git \
    libzip-dev \
    libssl-dev \
    libcrypt-dev \
    luajit \
    make \
    curl \
    apache2 \ 
    libc-dev \
    zlib1g-dev \
    gettext 
RUN git clone https://git.zx2c4.com/cgit /cgit-src
WORKDIR /cgit-src
RUN git submodule init
RUN git submodule update
RUN make NO_REGEX=NeedsStartEnd 
RUN make install