---
description: >-
  Confirmation of fragment length information for cfDNA and buffy coat DNA
  fragments.
---

# Insert size metrics

## Introduction

This figure shows the insert size distribution from the ACCESS target regions. Insert size is calculated from the start and stop positions of the reads after mapping to the reference genome.

![Example MultiQC report showing insert size distribution for 20 samples (10 plasma and 10 buffy coat samples).](../.gitbook/assets/insert.png)

## Methods

**Tool used:** [GATK-CollectInsertSizeMetrics](https://gatk.broadinstitute.org/hc/en-us/articles/360037055772-CollectInsertSizeMetrics-Picard-)\
&#x20;**BAM type:** Collapsed BAM\
&#x20;**Regions:** Pool A

The data used to produce this figure are the values under the `MODE_INSERT_SIZE` column contained in the output file from CollectInsertSizeMetrics.

## Interpretation

Cell free DNA has distinctive features due to the natural processes behind its fragmentation. One such feature is the set of 10-11 bp fluctuations that indicate the preferential splicing of fragments due to the number of bases per turn of the DNA helix, which causes a unique pattern of binding to the surface of histones.

The more pronounced peak at 166 bp indicate complete wrapping of the DNA around the histones' circumference, and similarly the second more pronounced peak indicates two complete wraps.

Buffy coat samples are mechanically sheared and thus do not exhibit these distinctive features, hence the different shape for their distribution.
