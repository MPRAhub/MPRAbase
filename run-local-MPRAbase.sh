#!/bin/bash 
# "${PWD}":
# docker run -it --rm -p 10000:8888 -v /Users/andrewblair/Desktop/Development:/home/jovyan/work docker.synapse.org/syn51118207/mprabase:arm64-v0.1.0
# docker run -it --rm -p 3838:3838 -p 8787:8787 -v /Users/andrewblair/Desktop/Development:/home/jovyan/work docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1
docker run -p 8888:8888 -p 3838:3838 -v /Users/andrewblair/Desktop/MPRA-Prime:/home/jovyan/work docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1