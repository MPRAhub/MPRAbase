library("devtools")
library("roxygen2")

# NOTE: Developed in the (JupyterLab) container docker.synapse.org/syn51118207/mprabase:v0.1.0 
# setwd("/home/jovyan/work/MPRAbase")

# References
# https://usethis.r-lib.org/reference/create_package.html
# https://github.com/r-lib/usethis/issues/553
# NOTE: The dev-MPRAbase directory was chmod -R 777
usethis::create_package("MPRAbase") # NOTE: R ragg dependency breaking pkgdown