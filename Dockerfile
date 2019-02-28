FROM shadowsocks/shadowsocks-libev:v3.2.3

ENV REMARK=

USER root

RUN apk add curl nodejs npm

RUN npm i qrcode -g

WORKDIR /app

COPY . /app

CMD ["sh", "qrcode.sh"]
