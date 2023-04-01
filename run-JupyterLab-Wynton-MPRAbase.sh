#!/bin/bash
# APB: 9595
# JJ: 4381
singularity run --bind /scratch/MPRA-Prime:/home/jovyan/ env/MPRAbase.sif jupyter lab --port=$1 --no-browser --ip=0.0.0.0 --notebook-dir /home/jovyan/
