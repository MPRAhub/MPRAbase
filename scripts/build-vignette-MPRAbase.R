library("devtools")
library("roxygen2")

# NOTE: Developed in the (JupyterLab) container docker.synapse.org/syn51118207/mprabase:v0.1.0 
setwd("/home/jovyan/work/MPRAbase")
# usethis::use_vignette("tutorial-MPRAbase") # NOTE: this is interactive and requires the R console  
# devtools::load_all()
devtools::build_rmd("vignettes/tutorial-MPRAbase.Rmd")
# devtools::build()
# devtools::build_vignettes(dependencies=TRUE)