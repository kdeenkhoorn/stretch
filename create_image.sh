#!/bin/bash

sudo /usr/sbin/debootstrap --variant=minbase stretch stretch 
sudo tar -C stretch -c . | docker import - debian-stretch:2.0

