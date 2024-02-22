#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=a5916193ec66f1f21e23
export DRONE_GITHUB_CLIENT_SECRET=52bd6be239ac02811d8b3f630b338fbf399d7867
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=5273-110-44-116-141.ngrok-free.app
export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
