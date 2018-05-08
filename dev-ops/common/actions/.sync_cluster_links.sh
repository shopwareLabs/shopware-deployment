#!/usr/bin/env bash

I: ssh cluster 'rm __CHECKOUT_DIRECTORY__/__ENV__'

rsync -avz -e "ssh" __CHECKOUT_DIRECTORY__/__ENV__ cluster:__CHECKOUT_DIRECTORY__/__ENV__
