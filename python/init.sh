#!/usr/bin/env bash

# remove sources
rm -rf /etc/apt/sources.list

## use TUNA mirrors
tee /etc/apt/sources.list <<- 'EOF'
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free

EOF

# install packages
apt-get update
apt-get install -y python3-dev curl git gcc libgsl0-dev

## install libeemd
mv src/libeemd.so.1.4.1 /usr/lib/libeemd.so.1.4.1
ln -s /usr/lib/libeemd.so.1.4.1 /usr/lib/libeemd.so

## clean
apt-get clean
apt-get autoremove

# install repo
git --version
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo -o /usr/local/bin/repo
chmod a+rx /usr/local/bin/repo

# setup git
git config --global user.email "wanghualong@pi2star.com"
git config --global user.name "WangHualong"

# set pip mirrors
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple

