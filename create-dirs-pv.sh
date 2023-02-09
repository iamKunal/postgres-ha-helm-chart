#!/usr/bin/env bash

#use this for creating dirs for required pvs

cmd='for i in $(seq 0 10); do mkdir -p /containers/services/docker/rootfs/tmp/work-pg/node-$i; done && chmod 0777 -R /containers/services/docker/rootfs/tmp/work-pg && ls /containers/services/docker/rootfs/tmp/work-pg/*'


echo "$cmd" | docker run -i --rm --privileged --pid=host justincormack/nsenter1