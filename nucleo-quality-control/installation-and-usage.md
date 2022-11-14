---
description: >-
  You must have run the main Nucleo workflow first before running the Nucleo QC
  workflows.
---

# Installation and Usage

## Step 1: Create a virtual environment. <a href="#step-1-create-a-virtual-environment." id="step-1-create-a-virtual-environment."></a>

### **Option (A) - if using cwltool**

Here we can use either virtualenv or conda.&#x20;

{% code title="python3-virtualenv" %}
```bash
pip3 install virtualenv
python3 -m venv my_project
source my_project/bin/activate
```
{% endcode %}

### Option (B) - recommended for Juno HPC cluster

If you are using toil, python 3 is required. Please install using Python 3.6 as done below:

Here we can use either [virtualenv](https://virtualenv.pypa.io/) or [conda](https://docs.conda.io/en/latest/). Here we will use virtualenv.

{% code title="python3-virtaulenv" %}
```bash
pip install virtualenv
virtualenv my_project
source my_project/bin/activate
```
{% endcode %}

## Step 2: Clone the repository

Clone the repository and checkout the develop branch for the most up-to-date version:

{% code lineNumbers="true" %}
```
git clone --recursive --branch release/1.0.0 https://github.com/msk-access/nucleo_qc.git
```
{% endcode %}



## Step 3: Install requirements using pip <a href="#step-3-install-requirements-using-pip" id="step-3-install-requirements-using-pip"></a>

We have already specified the version of cwltool and other packages in the requirements.txt file. Please use this to install.

<pre class="language-bash" data-title="installing_python_packages"><code class="lang-bash"><strong>cd nucleo_qc
</strong><strong>python3 pip3 install -r requirements.txt</strong></code></pre>

## Step 4: Check if you have singularity and nodejs for HPC

For HPC normally singularity is used for containers. Thus please make sure that is installed. For JUNO, you can do the following:

{% code title="load-singularity-on-juno" %}
```bash
module load singularity/3.7.1
```
{% endcode %}

We also need to make sure nodejs is installed, this can be installed using conda:

<pre class="language-shell" data-title="conda-install-nodejs"><code class="lang-shell"><strong>conda install -c conda-forge nodejs</strong></code></pre>

{% hint style="info" %}
If you are having issues with the initial set-up (venv conda/node.js) please refer to the [manual](https://app.gitbook.com/s/-MXY9KcVjrKoEWe0OQVs/common-operations/initial-setup)
{% endhint %}

## Step 5: Generate an inputs file <a href="#step-4-generate-an-inputs-file" id="step-4-generate-an-inputs-file"></a>

Next you must generate a proper input file in either [json](https://www.json.org/) or [yaml](https://yaml.org/) format.For details on how to create this file, please follow this example (there is a minimal example of what needs to be filled in at the end of the page):​

It's also possible to create and fill in a "template" inputs file using this command:

```
cwltool --make-template nucleo.cwl > inputs.yaml
```

Note: To see help for the inputs for cwl workflow you can use:&#x20;

```
toil-cwl-runner nucleo.cwl --help
```

Once we have successfully installed the requirements we can now run the workflow using _cwltool/toil_ .

## Step 5: Run the workflow <a href="#step-5-run-the-workflow" id="step-5-run-the-workflow"></a>

{% tabs %}
{% tab title="Using cwltool locally" %}
Here we show how to use [cwltool](https://github.com/common-workflow-language/cwltool) to run the workflow on a single machine, such as a laptop

#### Run the workflow with a given set of input using [cwltool](https://github.com/common-workflow-language/cwltool) on single machine

```
cwltool nucleo.cwl inputs.yaml
```
{% endtab %}

{% tab title="using toil-cwl-runner locally" %}
Here we show how to run the workflow using [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html) using single machine interface

Once we have successfully installed the requirements we can now run the workflow using _cwltool_ if you have proper input file generated either in [json](https://www.json.org/) or [yaml](https://yaml.org/) format. Please look at [Inputs Description](broken-reference) for more details.

#### Run the workflow with a given set of input using [toil](https://toil.readthedocs.io/en/latest/running/introduction.html) on single machine

```
toil-cwl-runner nucleo.cwl inputs.yaml
```
{% endtab %}

{% tab title="using cwltool on selene" %}
You can also run using cwltool on selene using singularity (`module load singularity/3.7.1`)

```
nohup cwltool --singularity --outdir /path/to/outdir nucleo.cwl inputs.yaml
```
{% endtab %}

{% tab title="Using toil-cwl-runner on JUNO" %}
Here we show how to run the workflow using [toil-cwl-runner](https://toil.readthedocs.io/en/latest/running/introduction.html) on MSKCC internal compute cluster called JUNO which has [IBM LSF](https://www.ibm.com/support/knowledgecenter/en/SSETD4/product\_welcome\_platform\_lsf.html) as a scheduler.

Note the use of `--singularity`to convert Docker containers into singularity containers, the `TMPDIR` environment variable to avoid writing temporary files to shared disk space, the `_JAVA_OPTIONS` environment variable to specify java temporary directory to `/scratch`, using `SINGULARITY_BINDPATH` environment variable to bind the `/scratch` when running singularity containers and `TOIl_LSF_ARGS` to specify any additional arguments to `bsub`commands that the jobs should have (in this case, setting a max wall-time of 6 hours).

Run the workflow with a given set of input using [toil](https://toil.readthedocs.io/en/latest/running/introduction.html) on JUNO (MSKCC Research Cluster)

{% code title="toil-lsf-execution" %}
```bash
TMPDIR=$PWD
TOIL_LSF_ARGS='-W 3600 -P test_nucleo_qc -app anyOS -R select[type==CentOS7]'
_JAVA_OPTIONS='-Djava.io.tmpdir=/scratch/'
SINGULARITY_BINDPATH='/scratch:/scratch:rw'
toil-cwl-runner \
       --singularity \
       --logFile ./example.log  \
       --jobStore ./example_jobStore \
       --batchSystem lsf \
       --workDir ./example_working_directory/ \
       --outdir $PWD \
       --writeLogs ./example_log_folder/ \
       --logLevel DEBUG \
       --stats \
       --retryCount 2 \
       --disableCaching \
       --disableChaining \
       --preserve-environment TOIL_LSF_ARGS TMPDIR \
       --maxLogFileSize 20000000000 \
       --cleanWorkDir onSuccess \
       nucleo_qc.cwl \
       inputs.yaml \
       > toil.stdout \
       2> toil.stderr 
```
{% endcode %}
{% endtab %}
{% endtabs %}

{% hint style="info" %}
See workflow [outputs](workflow-outputs.md) sections
{% endhint %}
