#!/usr/bin/env bash

I: rm __CHECKOUT_DIRECTORY__/__ENV__

ln -s __CHECKOUT_DIRECTORY__/__ENV__-__TAG__ __CHECKOUT_DIRECTORY__/__ENV__

INCLUDE: ./.sync_cluster_links.sh
