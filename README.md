# MPRAbase



# Prerequistes 

Before proceeding with the installation, please ensure that you have fulfilled making the following accounts:

-[] [GitHub](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home): required to create & add their public ssh key.
-[] [Synapse](https://www.synapse.org/): required to complete certification and email <> to request addition to the project.
-[] [Docker](https://www.docker.com/): (optionally) required to have a Docker account, which will enable them to pull the MPRAbase Docker image from the Synapse registry.
-[] [Singularity](https://cloud.sylabs.io/?_gl=1*zlt1gk*_ga*MTU1Mzg2OTQxNy4xNjg0MTkxMzM5*_ga_X710KLJKK6*MTY4NDE5MTMzOS4xLjEuMTY4NDE5MTM0Ni4wLjAuMA..&_ga=2.118074254.606116961.1684191339-1553869417.1684191339): (optionally) required to have a Synapse account if they are operating on a high performance compute cluster without root access.

For more information, please review our onboarding documentation for a smooth installation ([link here](https://docs.google.com/document/d/1d23PDeozSP36U-4aWNFhE1knIbZ2HUiWTan9AsKQ-KY/edit?usp=sharing)).

# Installation

Once you've completed the prerequiste accounts, please clone MPRAbase in a location that permits you to download. 

**TODO**: Add estimated file cache size

```bash
git clone git@github.com:MPRAhub/MPRAorg-LibrarySuite.git
cd MPRAorg-LibrarySuite
bash build-MPRAhub.sh
cd MPRAhub/MPRAbase
```

### Local

To run a local instance of iSEE MPRAbase, users can hit the ground running with the MPRAbase Docker container. We even have a Python script for you called **run-local-MPRAbase.py**, with an example command below.

```bash
cd MPRAbase
python3 run-local-MPRAbase.py --container_port 8888 --host_port 8888 \
--iSEE_MPRAbase_container_port 3838 --iSEE_MPRAbase_host_port 3838 \
--local_dir_mount /local/dir/path --image docker.synapse.org/syn51118207/mprabase:arm64-v0.1.1
```

### High Performance Compute (HPC) cluster

For users on a High Performance Compute (HPC) cluster, we also provide a Singularity definition file and bash script called **build-singularity-sif.sh**, which builds the Singularity Image Format (SIF) file for the iSEE-MPRAbase Singularity container.

```bash
cd MPRAbase/env/
bash build-singularity-sif.sh
```

After building the iSEE MPRAbase SIF file, navigate to the MPRAbase working directory and launch an instance with **run-hpc-MPRAbase.sh**.

```bash
cd MPRAbase/
python3 run-hpc-MPRAbase.sh  --container-port 9595 --local-dir-mount /local/dir/path
```

# Launch an iSEE MPRAbase Instance

(**WorkAround**) In a running MPRAbase JupyterLab container, open a terminal and follow these commands:

```bash
$ cd /home/jovyan/work
$ Rscript build-iSEEindex-fork.R
```

**TODO**: Vignette Tutorial


```bash


