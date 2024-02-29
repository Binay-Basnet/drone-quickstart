#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=77baaa96996e1b7542b6
export DRONE_GITHUB_CLIENT_SECRET=6c98ab353711b9c2a4cdaea28be0701ab16e4ca5
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=9d1c-110-44-116-141.ngrok-free.app
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
