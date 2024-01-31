#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=4745343fc2791cbfc53e
export DRONE_GITHUB_CLIENT_SECRET=905009612971d1204d00d3431f28ebf76c3ba981
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=10aa-110-44-116-141.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
