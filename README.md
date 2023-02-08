# postgres-ha-helm-chart


## Verifying repmgr works


Exec into any postgres pod and execute:
```shell
/opt/bitnami/scripts/postgresql-repmgr/entrypoint.sh repmgr -f ./opt/bitnami/repmgr/conf/repmgr.conf cluster show
```