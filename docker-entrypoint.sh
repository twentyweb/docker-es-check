#!/usr/bin/env bash

# check if the first argument passed in is es-check
if [ "$1" = 'es-check' ]; then
  set -- /sbin/tini -- "$@"
elif [[ "$1" =~ ^es.* ]] || [[ "$1" =~ ^--.* ]]; then
  set -- /sbin/tini -- es-check "$@"
fi

exec "$@"