#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=3887ca17456972aee2f5
export DRONE_GITHUB_CLIENT_SECRET=a2d0ee7ed3dc032acef50c60de6f0657f2fc1322
export DRONE_GITHUB_ADMIN=Binay-Basnet
export DRONE_SERVER_HOST=f807-2404-7c00-44-cd35-4da3-d13c-8844-fe88.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
