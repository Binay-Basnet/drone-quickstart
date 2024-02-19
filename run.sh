#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=9af2ca792a849c30836d
export DRONE_GITHUB_CLIENT_SECRET=68a7a29840f08f9b11a58183b66f2f469bb73459
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=aca0-110-44-116-141.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
