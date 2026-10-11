#!/usr/bin/env bash
set -Eeuo pipefail

status=$(cat /tmp/ripe_probe | tail -1 | awk '{print $3}')
echo "${status}"
if [ ${status} != keep-found ]; then
  exit 1
fi
