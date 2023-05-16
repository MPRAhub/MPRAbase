# MPRAbase

Dear MPRA Enthusiast,

Welcome, to MPRAbase, an open-source platform that enables access to Massively Parallel Reporter Assay (MPRA) data via an object-oriented database (OODB). We are a user-driven community supported by Synapse Sage Bionetworks and the National Heart Lung & Blood Institute (NHLBI) BioData Catalyst (BDC).

A centralized instance of iSEE-MPRAbase is hosted by UCSF, NHGRI, and the NHBLI BDC here: 

**TODO**: Create a NHLBI BDC link

We update the centralized instance quarterly, following meta data reporting guidelines that are in compliance with GEO, Bioconductor ExperimentHub, ENCODE, and IGVF. MPRAbase application plugins are managed by their developers, with hot fix support from the MPRAbase community, following a successful pull request and CI/CD unit testing. 

**TODO**: Add link to (sprint/quarterly update) schedule (google spreadsheet), email reporting mechanism, and application plugin citeria for pull request and unit testing

The MPRAbase repository serves as a decentralized resource center for MPRA data sharing and analysis. Here we provide tutorials for contributing to the centralized iSEE-MPRAbase platform, while retaining your project's data privacy and public release date. The MPRAbase repository is also routinely updated when a dataset passes the community's minimal standardization requirements and is ready to be made public. Therefore, MPRAbase users can launch iSEE-MPRAbase instances and pull new data and applications plugins before the quarterly update.

We invite all MPRA enthusiasts to install a local MPRAhub/MPRAbase and explore the vast landscape of regulatory elements.

Cheers,

MPRAbase Team

# Prerequistes 

Before proceeding with the installation, please ensure that you have fulfilled making the following accounts:

- [GitHub](https://github.com/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home)
- (Certified) [Synapse](https://www.synapse.org/)
- [Docker](https://www.docker.com/)
- (Optional) [Singularity](https://cloud.sylabs.io/?_gl=1*zlt1gk*_ga*MTU1Mzg2OTQxNy4xNjg0MTkxMzM5*_ga_X710KLJKK6*MTY4NDE5MTMzOS4xLjEuMTY4NDE5MTM0Ni4wLjAuMA..&_ga=2.118074254.606116961.1684191339-1553869417.1684191339)

For more information, please review our onboarding documentation for a smooth installation ([link here](https://docs.google.com/document/d/1d23PDeozSP36U-4aWNFhE1knIbZ2HUiWTan9AsKQ-KY/edit?usp=sharing)).

# Installation

Once you've completed the prerequiste accounts, please clone MPRAbase in a location that permits you to download. 

**TODO**: Add estimated file cache size

```bash
git clone git@github.com:MPRAhub/MPRAbase.git
cd MPRAbase
```

To run a local instance of iSEE MPRAbase, users can hit the ground running with the MPRAbase Docker container. We even have a bash script for you, with an example command below.

```bash
./run-local-MPRAbase.sh --container-port 8888 --host-port 8888 \
--iSEE-MPRAbase-container-port  3838 --iSEE-MPRAbase-host-port 3838 \
--local-dir-mount /local/dir/path
```

For users on a High Performance Compute (HPC) cluster, we also provide a Singularity definition file and bash scripts for building the Singularity Image Format (SIF) file and launching the container.

```bash
env/./build-singulary-sif.sh
./run-hpc-MPRAbase.sh  --container-port 9595 --local-dir-mount /local/dir/path
```

**TODO**: Create conda environment for iSEE-MPRAbase

# Launch iSEE MPRAbase

