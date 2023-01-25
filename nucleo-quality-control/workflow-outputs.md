# Workflow outputs

The workflow outputs multiple QC metric files that are merged into a single MultiQC report. The workflow also outputs the athena coverage report. For further interpretation please use the link to [MultiQC](interpretation-multiqc/) and [Athena](../interpretation-athena-coverage-report/).

Nucleo\_qc.cwl produces two main folders (Figure 1):

1. Sample folder: The sample folder contains sample-specific files regarding contamination.
2. Multiqc folder: The multiqc folder contains the following:
   1. &#x20;multiqc html report&#x20;
   2. multiqc data folder and&#x20;
   3. aggregate parsed stats folder. The latter folder contains sample-specific files.

<figure><img src="../.gitbook/assets/iScreen Shoter - 2022-12-05 131553.114.png" alt=""><figcaption><p>Figure 1. Output folder structure from nucleo_qc.cwl</p></figcaption></figure>

