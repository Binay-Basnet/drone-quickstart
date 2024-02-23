#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=6b4fd11b57ee4e3b9f24
export DRONE_GITHUB_CLIENT_SECRET=6522d1f017c5e28eb68851c6b31a4e54259e609c
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=2ff9-2404-7c00-43-5296-569a-4b63-51e3-5ee7.ngrok-free.app
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
