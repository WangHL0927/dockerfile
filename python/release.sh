#!/usr/bin/env bash

#docker_user='w958660278'
docker_user='pi2star'
image_name='python'
image_tag='3.7-slim'
image_version='v1.0.0'

docker build -t $docker_user/$image_name .
docker build -t $docker_user/$image_name:$image_tag .
docker build -t $docker_user/$image_name:$image_tag-$image_version .

docker push $docker_user/$image_name
docker push $docker_user/$image_name:$image_tag
docker push $docker_user/$image_name:$image_tag-$image_version
