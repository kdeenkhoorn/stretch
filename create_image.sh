#!/bin/bash

sudo /usr/share/docker-ce/contrib/mkimage.sh -t kdedesign/debian-stretch:1.0.0 debootstrap --variant=minbase stretch
