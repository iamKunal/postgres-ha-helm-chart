#!/usr/bin/env bash


watch --color -n1 kubectl exec -n postgres $1 -it -- /opt/bitnami/scripts/postgresql-repmgr/entrypoint.sh repmgr -f ./opt/bitnami/repmgr/conf/repmgr.conf cluster show
