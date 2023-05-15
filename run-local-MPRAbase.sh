#!/bin/bash 

# Command Line Arguments
# $1 (e.g., 8888) port in the container to port $2 (e.g., 8888) on the Docker host 
# $3 (e.g., 3838) R shiny app port in the container to port $4 (e.g., 3838) on the Docker host
# $5 mount our local directories ("${PWD}") as a shared volume to a directory inside the container (e.g., home/jovyan.work)

# Example
# bash run-local-MPRAbase.sh 8888 8888 3838 3838 /local/dir/path

docker run -p $1:$2 -p $3:$4 -v $5:/home/jovyan/work docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1