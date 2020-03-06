#!/bin/sh
set -e

function usesBoolean() {
  [ ! -z "${1}" ] && [ "${1}" = "true" ]
}

if usesBoolean "${INPUT_HELP}"; then
  tests-buster bust --help
  exit 0
fi

if usesBoolean "${INPUT_VERSION}"; then
  tests-buster bust --version
  exit 0
fi

DRY_RUN=""
AUTO_REMOVE=""

if usesBoolean "${INPUT_DRY_RUN}"; then
  DRY_RUN="--dry-run"
fi

if usesBoolean "${INPUT_AUTO_REMOVE}"; then
  DRY_RUN="--auto-remove"
fi

tests-buster bust ${DRY_RUN} ${AUTO_REMOVE} --path ${INPUT_PATH} --pattern ${INPUT_PATTERN}
