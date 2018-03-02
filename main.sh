#!/usr/bin/env bash

INPUT="${1}"

if [[ -z "${1}" ]]; then
  INPUT="$(pbpaste)"
fi 

if [[ -z "${NODE_PATH}" ]]; then
  NODE_PATH="/usr/local/opt/node@6/bin/node"
fi

RESULT="$(${NODE_PATH} ./slugify.js "${INPUT}" )"
echo "${RESULT}" | pbcopy
