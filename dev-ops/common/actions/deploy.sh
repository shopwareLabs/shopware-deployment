#!/usr/bin/env bash

git clone --branch __TAG__ git@github.com:shopware-blog/shopware-deployment-installation.git __CHECKOUT_DIRECTORY__/__ENV__-__TAG__

cp .env-__ENV__ __CHECKOUT_DIRECTORY__/__ENV__-__TAG__/.env

cd __CHECKOUT_DIRECTORY__/__ENV__-__TAG__ && composer install

INCLUDE: ./sync-cluster-tag.sh

I: rm __CHECKOUT_DIRECTORY__/__ENV__

ln -s __CHECKOUT_DIRECTORY__/__ENV__-__TAG__ __CHECKOUT_DIRECTORY__/__ENV__

INCLUDE: .sync_cluster_links.sh
