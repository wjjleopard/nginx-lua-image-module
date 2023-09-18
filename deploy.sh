#!/usr/bin/env bash
ssh root@139.129.24.31 "mkdir -p /etc/openresty/lua && mkdir -p /etc/openresty/backup && mv /etc/openresty/lua /etc/openresty/backup/lua-`date +%Y-%m-%d-%H:%M:%S`"
scp -r /Users/wjj/Codes/github/nginx/nginx-lua-image-module/lua root@139.129.24.31:/etc/openresty/
ssh root@139.129.24.31 "service openresty restart"