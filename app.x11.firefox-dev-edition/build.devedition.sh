#!/bin/bash

docker build -t firefox.dev:latest -f dockerfile.fedora .

set +x;
