# shadowsocks-qrcode-docker

Integrate [official image](https://github.com/shadowsocks/shadowsocks-libev/blob/master/docker/alpine/Dockerfile) with QR code. (V2ray is not supported)

<p align="center">
  <img src="https://i.imgur.com/rdePegZ.png" width="600">
</p>

## Pull the image

```bash
docker pull verycool/shadowsocks-qrcode-docker
```

## Useage

https://github.com/shadowsocks/shadowsocks-libev/tree/master/docker/alpine

## With other customizations

- REMARK: server remark, defaults to empty

## QR CODE

```bash
docker-compose logs | grep shadowsocks
```
