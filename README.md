# Debian-stretch
This docker image is an armhf version of Debian 9 linux which i have created especially for my Cubietruck. It is my personally created image and the base for my docker images. This image is also compatible with the Raspberry Pi 2.

## Build characteristics:
- Build on a Cubietruck board with Debian 9 (armhf)

## Build dependencies:
- debootstrap 
```
# apt-get install debootstrap)
```

## Build command:
```
$ sudo /usr/share/docker-ce/contrib/mkimage.sh -t kdedesign/debian-stretch debootstrap --variant=minbase stretch
```

## More info:
- Check https://github.com/kdeenkhoorn/stretch
- Check https://hub.docker.com/r/kdedesign/debian-stretch/

Have fun!

Kl@@s
