#!/usr/bin/env bash
docker build --tag=purescript-node-postgres-temp .
docker container create --attach=STDIN --attach=STDOUT --attach=STDERR --hostname='purescript-node-postgres-temp' --init --interactive --name='purescript-node-postgres-temp' --publish=5432:5432 --tty --user=root postgres:latest /bin/bash
docker start --attach --interactive purescript-node-postgres-temp
