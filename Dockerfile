FROM shadowsocks/shadowsocks-libev

ENV REMARK=

USER root

RUN apk add curl nodejs npm

RUN npm i qrcode -g

WORKDIR /app

COPY . /app

CMD ["sh", "qrcode.sh"]
