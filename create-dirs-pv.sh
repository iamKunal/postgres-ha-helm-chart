#!/usr/bin/env bash

#use this for creating dirs for required pvs

cmd='base_dir=/containers/services/docker/rootfs/tmp && mkdir -p $base_dir/snapshots && chmod 0777 -R $base_dir/snapshots && mkdir -p /var/velero-local-volume-provider && chmod 0777 -R /var/velero-local-volume-provider && for i in $(seq 0 10); do mkdir -p $base_dir/work-pg/node-$i; done && chmod 0777 -R $base_dir/work-pg && ls $base_dir/work-pg/*'


echo "$cmd" | docker run -i --rm --privileged --pid=host justincormack/nsenter1