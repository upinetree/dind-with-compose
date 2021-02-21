#!/bin/sh

set -e

cmd="$@"

until docker ps 1>/dev/null; do
  >&2 echo "Docker daemon is unavailable - sleeping"
  sleep 1
done

echo "Docker daemon is up - executing command"
exec $cmd
