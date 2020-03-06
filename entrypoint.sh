#!/bin/sh
set -e

function usesBoolean() {
  [ ! -z "${1}" ] && [ "${1}" = "true" ]
}

HELP=""
VERSION=""
DRY_RUN=""
AUTO_REMOVE=""

if usesBoolean "${INPUT_HELP}"; then
  HELP="--help"
fi

if usesBoolean "${INPUT_VERSION}"; then
  VERSION="--version"
fi

if usesBoolean "${INPUT_DRY_RUN}"; then
  DRY_RUN="--dry-run"
fi

if usesBoolean "${INPUT_AUTO_REMOVE}"; then
  AUTO_REMOVE="--auto-remove"
fi

cd ${INPUT_PATH}
npm i > /dev/null
tests-buster bust ${HELP} ${VERSION} ${DRY_RUN} ${AUTO_REMOVE} --pattern ${INPUT_PATTERN}
