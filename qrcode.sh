#!/bin/sh
link=ss://$(echo -n ${METHOD}:${PASSWORD}@$(curl ifconfig.me -s):${SERVER_PORT} | base64)#${REMARK}
echo -e $link\\n
echo -n $link | qrcode
exec ss-server \
      -s $SERVER_ADDR \
      -s $SERVER_ADDR_IPV6 \
      -p $SERVER_PORT \
      -k ${PASSWORD} \
      -m $METHOD \
      -t $TIMEOUT \
      --fast-open \
      -d $DNS_ADDRS \
      -u \
      $ARGS
