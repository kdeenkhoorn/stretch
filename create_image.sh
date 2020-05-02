#!/bin/bash

sudo /usr/sbin/debootstrap --variant=minbase stretch stretch 
sudo tar -C stretch -c . | docker import - kdedesign/debian-stretch:latest
sudo rm -r ./stretch