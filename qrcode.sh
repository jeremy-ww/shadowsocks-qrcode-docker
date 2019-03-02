#!/bin/sh
link=ss://$(echo -n ${METHOD}:${PASSWORD} | base64)@$(curl ifconfig.me -s):${SERVER_PORT}#${REMARK}
echo -e $link\\n
echo -n $link | qrcode
ss-server \
      -s $SERVER_ADDR \
      -p $SERVER_PORT \
      -k ${PASSWORD:-$(hostname)} \
      -m $METHOD \
      -t $TIMEOUT \
      -d $DNS_ADDRS \
      -u \
      $ARGS
