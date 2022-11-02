---
description: >-
  You must have run the Nucleo workflow first before running any of the
  MSK-ACCESS QC workflows.
---

# Installation and Usage

## Step 1: Clone the repository

Clone the repository and checkout the develop branch for the most up-to-date version:

{% code lineNumbers="true" %}
```
git clone --recursive https://github.com/msk-access/nucleo_qc.git
cd nucleo_qc
git checkout develop
git submodule update --init --recursive --merge
cd cwl_subworkflows/
git checkout develop
cd command_line_tools/
git checkout develop
cd ../..
cd cwl-commandlinetools/
git checkout develop
```
{% endcode %}



## Step 1: Create a virtual environment. <a href="#step-1-create-a-virtual-environment." id="step-1-create-a-virtual-environment."></a>

Option (A) - if using cwltool, please proceed using python 3.6 as done below: Here we can use either virtualenv or conda.&#x20;

Here we will use virtualenv.

`pip3 install virtualenv`

`python3 -m venv my_project`

`source my_project/bin/activate`

Option (B) - recommended for Juno HPC clusterIf you are using toil, python 3 is required. Please install using Python 3.6 as done below:Here we can use eithervirtualenvorconda.&#x20;

Here we will use virtualenv.

`pip install virtualenv`

`virtualenv my_project`

`source my_project/bin/activate`

Once you execute the above command you will see your bash prompt something on this lines:

`(my_project)[server]$`

Step 2: Clone the repository

`git clone --recursive --branch develop https://github.com/msk-access/access_qc_generation.git`

Note: The develop branch is the latest stable release of the pipeline

## Step 3: Install requirements using pip <a href="#step-3-install-requirements-using-pip" id="step-3-install-requirements-using-pip"></a>

We have already specified the version of cwltool and other packages in the requirements.txt file. Please use this to install.

python3 pip3 install -r requirements.txt

## Step 4: Generate an inputs file <a href="#step-4-generate-an-inputs-file" id="step-4-generate-an-inputs-file"></a>

Next you must generate a proper input file in either [json](https://www.json.org/) or [yaml](https://yaml.org/) format.For details on how to create this file, please follow this example (there is a minimal example of what needs to be filled in at the end of the page):​

It's also possible to create and fill in a "template" inputs file using this command:

`$ cwltool --make-template nucleo.cwl > inputs.yaml`

Note: To see help for the inputs for cwl workflow you can use:&#x20;

`toil-cwl-runner nucleo.cwl --help`

Once we have successfully installed the requirements we can now run the workflow using _cwltool/toil_ .

## Step 5: Run the workflow <a href="#step-5-run-the-workflow" id="step-5-run-the-workflow"></a>

Using toil-cwl-runner locally Using toil-cwl-runner on JUNOHere we show how to use [cwltool](https://github.com/common-workflow-language/cwltool) to run the workflow on a single machine, such as a laptop

#### Run the workflow with a given set of input using [cwltool](https://github.com/common-workflow-language/cwltool) on single machine <a href="#run-the-workflow-with-a-given-set-of-input-using-cwltool-on-single-machine" id="run-the-workflow-with-a-given-set-of-input-using-cwltool-on-single-machine"></a>

To generate the QC files for one sample:cwltool nucleo.cwl inputs.yamlYour workflow should now be running on the specified batch system. See [outputs](https://github.com/msk-access/access\_qc\_generation/tree/5087428d557571e8a6cfea17b46ad8c22fd96ca1/docs/outputs-description.md) for a description of the resulting files when is it completed.PreviousRequirementsNextInputs Description\
