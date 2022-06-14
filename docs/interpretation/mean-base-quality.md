---
description: >-
  Checking for low base quality samples.
---

### Introduction

This figure shows the mean base quality by cycle for before and after BaseQualityScoreRecalibration (BQSR). The sequencer uses the difference in intensity of the fluorescence of the bases to give an estimate of the quality of the base that has been read. The BQSR tool from GATK recalculates these values based on the empirical error rate of the reads themselves, which is a more accurate estimate of the original quality of the read.

![Example MultiQC report showing mean base quality by cycle for 20 samples.](../.gitbook/assets/mean-base-quality.png)

### Methods
**Tool used:** [GATK-MeanQualityByCycle](https://gatk.broadinstitute.org/hc/en-us/articles/360037224392-MeanQualityByCycle-Picard-)<br>
**BAM type:** Uncollapsed BAM.<br>
**Regions:** Pool A

### Interpretation

It is normal to see a downwards trend in pre and post-recalibration base quality towards the ends of the reads. Average post-recalibration quality scores should be above 20. Spikes in quality may be indicative of a sequencer artifact.
