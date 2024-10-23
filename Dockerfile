FROM kathara/base 
LABEL org.opencontainers.image.authors="Dutriez Clément <clement.dutriez@univ-eiffel.fr>"

RUN apt update
RUN apt upgrade -y
RUN apt install -y \
    lynx \
    bind9 \
    bind9utils \
    bind9-doc \
    dnsutils


ARG DEBIAN_FRONTEND="noninteractive"

RUN apt clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
    