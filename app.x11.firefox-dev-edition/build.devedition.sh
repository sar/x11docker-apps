#!/bin/bash

docker build -t x11.firefox.dev:latest -f dockerfile.fedora .

set +x;
