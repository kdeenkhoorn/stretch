# Debian-stretch
This docker image is an armhf version of Debian 9 linux which i have created especially for my Cubietruck. It is my personally created image and the base for my docker images. This image is also compatible with the Raspberry Pi 2.

## Build characteristics:
- Build on a Odroid HC2 board with Ubuntu 18.04 (armhf)

## Build dependencies:
- debootstrap 
```
# apt install debootstrap
```

## Build command:
```
$ cd /workdir_with_500M_of_space
$ sudo /usr/sbin/debootstrap --variant=minbase stretch stretch
$ sudo tar -C stretch -c . | docker import - debian-stretch:2.0

```

## More info:
- Check https://github.com/kdeenkhoorn/stretch
- Check https://hub.docker.com/r/kdedesign/debian-stretch/
- Check https://docs.docker.com/develop/develop-images/baseimages/

Have fun!

Kl@@s
