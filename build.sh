#!/bin/bash

BIN_VERSION="go-fastdfs:v2.0.0"
export GOOS=linux
export GOARCH=amd64

go build -ldflags "-w -s -X 'main.VERSION=$BIN_VERSION' -X 'main.BUILD_TIME=build_time:`date`' -X 'main.GO_VERSION=`go version`' -X 'main.GIT_VERSION=git_version:`git rev-parse HEAD`'" fileserver.go
GOOS=windows go build -ldflags "-w -s -X 'main.VERSION=$BIN_VERSION' -X 'main.BUILD_TIME=build_time:`date`' -X 'main.GO_VERSION=`go version`' -X 'main.GIT_VERSION=git_version:`git rev-parse HEAD`'" fileserver.go


