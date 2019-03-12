FROM shadowsocks/shadowsocks-libev:v3.2.3

ENV REMARK=

USER root

RUN apk add curl nodejs npm && \
    npm i qrcode -g && \
    curl -L https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.1.0/v2ray-plugin-linux-amd64-v1.1.0.tar.gz | tar -xvz && \
    mv v2ray-plugin_linux_amd64 /usr/bin/v2ray-plugin

WORKDIR /app

COPY . /app

CMD ["sh", "qrcode.sh"]
