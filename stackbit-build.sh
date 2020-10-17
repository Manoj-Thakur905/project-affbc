#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5f8affbc8f41a0001cbdac55/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://api.stackbit.com/project/5f8affbc8f41a0001cbdac55/webhook/build/publish > /dev/null