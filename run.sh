#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=bfb648af20a4d34e57f7
export DRONE_GITHUB_CLIENT_SECRET=88e02a0f54f9269aa8f6d4532122839534b78eea
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=16f7-110-44-116-141.ngrok-free.app
export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
