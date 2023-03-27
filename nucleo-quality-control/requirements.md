---
description: Requirements
---

# Requirements

## Before installing the pipeline, make sure your system supports these requirements

The following are the requirements for running the workflow:

* A system with either [docker](https://www.docker.com/) or [singularity](https://sylabs.io/docs/) configured.
* Python 3.6 and above (for running [cwltool](https://github.com/common-workflow-language/cwltool) and running [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html))
  * Python Packages (will be installed as part of pipeline installation):
    * coloredlogs
    * toil\[cwl]
    * pytest
    * setuptool&#x20;
    * cwltool
    * pytest-runner
  * Python Virtual Environment using [virtualenv](https://virtualenv.pypa.io/) or [conda](https://docs.conda.io/en/latest/).
