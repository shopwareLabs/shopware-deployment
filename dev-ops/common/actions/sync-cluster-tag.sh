#!/usr/bin/env bash

rsync -avz -e "ssh" __CHECKOUT_DIRECTORY__/__ENV__-__TAG__ cluster:__CHECKOUT_DIRECTORY__
