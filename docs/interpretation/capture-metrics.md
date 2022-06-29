---
description: >-
  Validating the efficacy of the Pool A and Pool B bait sets.
---

### Introduction

There are several sections displaying bait set capture efficiency. Each section corresponds to a separate BAM type and bait set combination. The tool used to produce the metrics is GATK-CollectHsMetrics. By default, only the mean bait coverage, mean target coverage, and % Usable bases on-target are displayed. However, there are many more metrics that can be toggled to display by clicking on the `Configure Columns` button.

![Example MultiQC report showing insert size distribution for 20 samples (10 plasma and 10 buffy coat samples).](../.gitbook/assets/capture.png)

### Methods
**Tool used:** [GATK-CollectHsMetrics](https://gatk.broadinstitute.org/hc/en-us/articles/360036856051-CollectHsMetrics-Picard-)<br>
**BAM type:** (1) Uncollapsed BAM, (1) Collapsed BAM, (1) Duplex BAM, and (4) Simplex BAM<br>
**Regions:** Pool A and Pool B

### Interpretation

The aim is to have high coverage across Pool A and Pool B panels.
