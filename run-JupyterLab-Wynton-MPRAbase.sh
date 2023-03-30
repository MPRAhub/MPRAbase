#!/bin/bash 
singularity run --bind /scratch/MPRA-Prime:/home/jovyan/ env/MPRAbase.sif jupyter lab --port=9595 --no-browser --ip=0.0.0.0 --notebook-dir /home/jovyan/
