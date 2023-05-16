#!/bin/bash 

# Declare variables
container_port=""
host_port=""
iSEE_MPRAbase_container_port=""
iSEE_MPRAbase_host_port=""
local_dir_mount=""
image="docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1"
verbose=false


# Function to display usage
usage() {
  echo "Usage: $0 --container-port <container_port> --host-port <host_port> --iSEE-MPRAbase-container-port <iSEE_MPRAbase_container_port> --iSEE-MPRAbase-host-port <iSEE_MPRAbase_host_port> --local-dir-mount <local_dir_mount> --image <image> [--verbose]"
  echo "  --container-port    Container port to host port (required)"
  echo "  --host-port   Host port to container port (required)"
  echo "  --iSEE-MPRAbase-container-port   Container port for iSEE-MPRAbase (required)"
  echo "  --iSEE-MPRAbase-host-port   Host port for iSEE MPRAbase (required)"
  echo "  --local-dir-mount  Mount local directory as a shared volume to a directory inside the container (e.g., home/jovyan/work) (required)"
  echo "  --image  Docker image name for running a container (default to current version)"
  echo "  --verbose  Enable verbose mode (optional)"
}

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --container-port) container_port="$2"; shift ;;
    --host-port) host_port="$2"; shift ;;
    --iSEE-MPRAbase-container-port) iSEE_MPRAbase_container_port="$2"; shift ;;
    --iSEE-MPRAbase-host-port) iSEE_MPRAbase_host_port="$2"; shift ;;
    --local-dir-mount) local_dir_mount="$2"; shift ;;
    --image) image="$2"; shift ;;
    --verbose) verbose=true ;;
    *) usage; exit 1 ;;
  esac
  shift
done

docker run -p container_port:host_port -p iSEE_MPRAbase_container_port:iSEE_MPRAbase_host_port -v local_dir_mount:/home/jovyan/work image