#!/bin/sh
set -e

until ls -l /var/opt/app/main; do
  >&2 echo "go build is not done. - sleeping" # Goのビルドが終わるまで待機
  sleep 2
done

>&2 echo "go build is done - executing command"
env | sort
sam local start-api --docker-volume-basedir "${VOLUME}/" --host 0.0.0.0 --template template.yml
