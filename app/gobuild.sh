#!/bin/sh
dep ensure # パッケージ管理はdepを使用
CGO_ENABLED=0 GOOS=linux go build -v -a -installsuffix cgo -o ./main ./main.go
