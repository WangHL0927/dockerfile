#!/usr/bin/env bash

docker build -t w958660278/centos-alicloud:7 .
docker build -t w958660278/centos-alicloud .

docker push w958660278/centos-alicloud:7
docker push w958660278/centos-alicloud

