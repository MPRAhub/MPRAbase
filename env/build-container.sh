#!/bin/bash 
# docker build -t docker.synapse.org/syn51118207/mprabase:amd64-v0.1.0 . # NOTE: For intel
docker build -t docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1 . # NOTE: For m1/m2 iOS
