#!/bin/bash

# Declare variables
container_port=""
local_dir_mount=""
sif=env/MPRAbase.sif
verbose=false

usage() {
  echo "Usage: $0 --container-port <container_port> --local-dir-mount <local_dir_mount> --sif <sif> [--verbose]"
  echo "  --container-port   Host port to container port (required)"
  echo "  --local-dir-mount    Host port to container port (required)"
  echo "  --sif   Host port to container port (default: the path where env/./build-singulary-sif.sh builds the main branch version's sif file)"
  echo "  --verbose  Enable verbose mode (optional)"

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --container-port) container_port="$2"; shift ;;
    --local-dir-mount) local_dir_mount="$2"; shift ;;
    --sif) sif="$2"; shift ;;
    --verbose) verbose=true ;;
    *) usage; exit 1 ;;
  esac
  shift
done

singularity run --bind local_dir_mount:/home/jovyan/ sif jupyter lab --port=container_port --no-browser --ip=0.0.0.0 --notebook-dir /home/jovyan/