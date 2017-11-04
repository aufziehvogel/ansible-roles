#!/usr/bin/env bash

certbot renew

for domaindir in /etc/letsencrypt/live/*/; do
    domain=$(basename $domaindir)
    cat ${domaindir}fullchain.pem ${domaindir}privkey.pem > /etc/haproxy/certs/$domain.pem
done

docker kill --signal="SIGHUP" haproxy
