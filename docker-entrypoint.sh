#!/usr/bin/env sh

# check if the first argument passed in is es-check
if [ "$1" = 'es-check' ]; then
  set -- /sbin/tini -- "$@"
else
  set -- /sbin/tini -- es-check "$@"
fi

exec "$@"