# MPRAbase

MPRAbase is an open-source platform that enables access to Massively Parallel Reporter Assay (MPRA) data via an object-oriented database (OODB) supported by Synapse Sage Bionetworks and the National Heart Lung & Blood Institute (NHLBI) BioData Catalyst (BDC).

# Prerequistes 

Before proceeding with the installation, please ensure that you have fulfilled the following accounts and requirements:

- [] [GitHub]()
- [] (Certified) [Synapse](https://www.synapse.org/)
- [] [Docker](https://www.docker.com/)
- [] (Optional) [Singularity](https://cloud.sylabs.io/?_gl=1*zlt1gk*_ga*MTU1Mzg2OTQxNy4xNjg0MTkxMzM5*_ga_X710KLJKK6*MTY4NDE5MTMzOS4xLjEuMTY4NDE5MTM0Ni4wLjAuMA..&_ga=2.118074254.606116961.1684191339-1553869417.1684191339)

For more information, please review our onboarding documentation for a smooth installation ([link here](https://docs.google.com/document/d/1d23PDeozSP36U-4aWNFhE1knIbZ2HUiWTan9AsKQ-KY/edit?usp=sharing)).

# Installation

```bash
git clone git@github.com:MPRAhub/MPRAbase.git
```

```bash
cd MPRAbase
bash run-local-MPRAbase.sh 8888 8888 3838 3838 /local/dir/path
```