FROM alpine:3.23.4

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV TZ=Asia/Taipei

WORKDIR /workspace

RUN sed -i 's@dl-cdn.alpinelinux.org/alpine@alpine.cs.nycu.edu.tw@g' /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
        python3=3.12.13-r0 \
        py3-pip=25.1.1-r1 \
        tzdata \
        ca-certificates \
    && pip3 install --no-cache-dir --break-system-packages \
        requests==2.33.1 \
        python-calamine==0.6.2 \
        opencc-python-reimplemented==0.1.7 \
    && cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime \
    && echo "Asia/Taipei" > /etc/timezone \
    && rm -rf /var/cache/apk/*
