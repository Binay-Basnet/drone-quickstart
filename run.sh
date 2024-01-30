#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=4a0062c1de77419efbe0
export DRONE_GITHUB_CLIENT_SECRET=0d3aeaf589398e84dda6588f6058077bfbd3b42b
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=f97a-110-44-116-141.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
