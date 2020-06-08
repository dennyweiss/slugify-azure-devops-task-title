#!/usr/bin/env bash

INPUT="${1}"

if [[ -z "${1}" ]]; then
  INPUT="$(pbpaste)"
fi 

if [[ -z "${NODE_PATH}" ]]; then
  NODE_PATH="/Users/dschulz/.nvm/versions/node/v12.16.2/bin/node"
fi

RESULT="$(${NODE_PATH} ./slugify.js "${INPUT}" )"
echo "${RESULT}" | pbcopy
