# Fingerprinting

## Introduction

This section contains a table showing the samples clustered into groups, where each row in the table corresponds to one sample. The table will show whether your samples are grouping together in unexpected ways, which would indicate sample mislabelling.

![](<../.gitbook/assets/iScreen Shoter - 2022-07-21 123352.704.png>)

## Methods <a href="#methods" id="methods"></a>

**Tool used:** [biometrics](https://github.com/msk-access/biometrics) **BAM type:** Collapsed BAM **Regions:** MSK-ACCESS-v1\_0-curatedSNPs.vcfIt is a two step process to produce the table: (1) extract SNP genotypes from each sample using `biometrics extract` command and (2) perform a pairwise comparison of all samples to determine sample relatedness using the `biometrics genotype` command. Please see the biometrics documentation for further documentation on the methods.

## Interpretation <a href="#interpretation" id="interpretation"></a>

Below is a description of all the columns.



| Column Name                   | Description                                                                                                         |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| sample\_name                  | The sample name.                                                                                                    |
| expected\_sample\_group       | The expected group for the sample based on user input.                                                              |
| predicted\_sample\_group      | The predicted group for the sample based on the clustering results.                                                 |
| cluster\_index                | The integer cluster index. All rows with the same cluster\_index are in the same cluster.                           |
| cluster\_size                 | The size of the cluster this sample is in.                                                                          |
| avg\_discordance              | The average discordance between this sample and all other samples in the cluster.                                   |
| count\_expected\_matches      | The count of expected matches when comparing the sample to all others in the cluster.                               |
| count\_unexpected\_matches    | The count of unexpected matches when comparing the sample to all others in the cluster.                             |
| count\_expected\_mismatches   | The count of expected mismatches when comparing the sample to all other samples (inside and outside its cluster).   |
| count\_unexpected\_mismatches | The count of unexpected mismatches when comparing the sample to all other samples (inside and outside its cluster). |

