#!/usr/bin/env bash


kubectl exec -n postgres "$1" -- bash -c 'kill -9 $(ps -aux | grep postgres | tr -s " " | cut -d" " -f2 | head -n1)'
