#!/usr/bin/env bash
set -eo pipefail

: "${SEPARATOR:=,}"

while read -r F; do
  echo "${F}"
done <<<"$(echo "${CHANGED_FILES}" | tr "${SEPARATOR}" '\n')"
