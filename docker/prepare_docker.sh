#!/bin/bash

cd docker
docker build --platform=linux/amd64 -t gramine:1.7-jammy-patched-base -f Dockerfile.base .
docker build --platform=linux/amd64 -t gramine:1.7-jammy-patched-builder -f Dockerfile.builder .
