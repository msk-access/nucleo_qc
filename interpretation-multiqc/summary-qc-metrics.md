# Summary QC metrics



The first section of MultiQC report is the Summary QC metrics table that displays the summary information per-sample. The metrics presented are mainly lab sample quality metrics, alignment information and quality of the target capture.

<figure><img src="../.gitbook/assets/iScreen Shoter - 2022-09-06 073722.703.png" alt=""><figcaption></figcaption></figure>

### Interpretation

In the above table the colouring represents the QC criteria of the values set by the Bioinformatics tram. The colouring schema is either red, yellow or green, which indicates if the metric fails, is borderline, or passes the thresholds. This allows the Bioinformatics team to quickly glance at all samples to see where potential issues are. Below are the descriptions for each column and were the data was obtained from.

| cmoSampleName       | LIMS                                                                                                       | The sample name.                                                                                                                          |
| ------------------- | ---------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Library input       | LIMS                                                                                                       | The library input.                                                                                                                        |
| Library yield       | LIMS                                                                                                       | The library yield.                                                                                                                        |
| Pool input          | LIMS                                                                                                       | The pool input.                                                                                                                           |
| Raw cov.            | MEAN\_TARGET\_COVERAGE column in the output file produced by GATK-CollectHsMetrics (uncollapsed BAM).      | The mean sequencing coverage over target regions                                                                                          |
| Duplex target cov.  | MEAN\_TARGET\_COVERAGE column in the output file produced by GATK-CollectHsMetrics (duplex BAM, pool A).   | Average coverage over pool A targets in the duplex BAM.                                                                                   |
| Minor contamination | [biometrics](https://github.com/msk-access/biometrics)                                                     | Minor contamination based on biometrics.                                                                                                  |
| Major contamination | [biometrics](https://github.com/msk-access/biometrics)                                                     | Major contamination based on.                                                                                                             |
| Fingerprint         | [biometrics](https://github.com/msk-access/biometrics)                                                     | Pass: no unexpected matches/mismatches. NA: if no samples from the same patient to compare with. Fail: has unexpected matches/mismatches. |
| Sex mismatch        | [biometrics](https://github.com/msk-access/biometrics)                                                     | Do the sample's predicted and expected sex mismatch?                                                                                      |
| Ins. size (MODE)    | MODE\_INSERT\_SIZE column from GATK-CollectHsMetrics (Duplex BAM).                                         | The most frequently occurring insert size.                                                                                                |
| N reads             | TOTAL\_READS column in the output file produced by GATK-CollectHsMetrics (uncollapsed BAM).                | Total reads sequenced (uncollapsed)                                                                                                       |
| % Aligned           | PCT\_PF\_UQ\_READS\_ALIGNED column in the output file produced by GATK-CollectHsMetrics (uncollapsed BAM). | Percentage of reads aligned to the genome.                                                                                                |
| % Noise             | [sequence\_qc](https://github.com/msk-access/sequence\_qc)                                                 | Percentage of noise.                                                                                                                      |
| N noise sites       | [sequence\_qc](https://github.com/msk-access/sequence\_qc)                                                 | Number of sites contributing to noise.                                                                                                    |
