# Workflow outputs

The workflow outputs multiple QC metric files that are merged into a single MultiQC report. The workflow also output the athena coverage report. Further interpretation use the links to [MultiQC](interpretation-multiqc/) and [Athena](../interpretation-athena-coverage-report/).

Nucleo\_qc.cwl produces two main folders (Figure 5):

1. Sample folder

The sample folder contains sample specific files regarding contamination.



1. Multiqc folder

The multiqc folder contains the 1) multiqc html report 2) multiqc data folder and 3) aggregate parsed stats folder. The latter folder contains sample specific files.

<figure><img src="../.gitbook/assets/iScreen Shoter - 2022-12-05 131553.114.png" alt=""><figcaption><p>Figure 5. Output folder structure from nucleo_qc.cwl</p></figcaption></figure>

