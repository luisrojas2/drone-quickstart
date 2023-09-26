#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=55d304180fa091c3215c
export DRONE_GITHUB_CLIENT_SECRET=5a44e370162bc6bf1b6ab4c751ae9d9c7bce8ba5
export DRONE_GITHUB_ADMIN=luisrojas2
export DRONE_SERVER_HOST=0149-181-174-105-146.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
