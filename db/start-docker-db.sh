#!/usr/bin/env bash
docker container create --attach=STDIN --attach=STDOUT --attach=STDERR --hostname='purescript-node-postgres-db' --init --interactive --name='purescript-node-postgres-db' --publish=5432:5432 --tty --user=root postgres:latest /bin/bash
