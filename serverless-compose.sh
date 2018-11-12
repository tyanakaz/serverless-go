#!/bin/sh

npm init
docker-compose build --force-rm
docker-compose up
