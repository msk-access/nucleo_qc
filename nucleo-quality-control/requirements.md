---
description: Requirements
---

# Requirements

## Before installing the pipeline, make sure your system supports these requirements

The following are the requirements for running the workflow:

* A system with either [docker](https://www.docker.com/) or [singularity](https://sylabs.io/docs/) configured.
* Python 3.6 (for running [cwltool](https://github.com/common-workflow-language/cwltool) and running [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html))
  * Python Packages (will be installed as part of pipeline installation):
    * toil\[cwl]==5.1.0
    * coloredlogs==15.0.1&#x20;
    * pytest==7.2.0&#x20;
    * setuptools==65.4.1&#x20;
    * cwltool==3.1.20220628170238&#x20;
    * pytest-runner==6.0.0&#x20;
    * tox==3.27.1
  * Python Virtual Environment using [virtualenv](https://virtualenv.pypa.io/) or [conda](https://docs.conda.io/en/latest/).
