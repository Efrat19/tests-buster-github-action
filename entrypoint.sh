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
tests-buster bust ${HELP} ${VERSION} ${DRY_RUN} ${AUTO_REMOVE} --path ${INPUT_PATH} --pattern ${INPUT_PATTERN}
