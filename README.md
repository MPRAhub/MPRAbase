# MPRAbase

MPRAbase is an open-source platform that enables access to Massively Parallel Reporter Assay (MPRA) data via an object-oriented database (OODB) supported by Synapse Sage Bionetworks and the National Heart Lung & Blood Institute (NHLBI) BioData Catalyst (BDC).

# Pre-requistes 

Before proceeding with the installation, please ensure that you have fulfilled the following accounts and requirements:

- [] GitHub
- [] (Certified) Synapse
- [] Docker
- [] (Optional) Singularity

Please complete the prerequisites listed above to ensure a smooth installation process and avoid any potential issues.

# Installation

```bash
git clone git@github.com:MPRAhub/MPRAbase.git
```

```bash
cd MPRAbase
bash run-local-MPRAbase.sh 8888 8888 3838 3838 /local/dir/path
```