# Insert Size

## Introduction

This figure below represents the insert size distribution from the CMO-CH target regions. Insert size is calculated from the start and stop positions of the reads after mapping to the reference genome.

![](<../../.gitbook/assets/iScreen Shoter - 2022-07-21 122943.834.png>)

## Methods

**Tool used:** [GATK-CollectInsertSizeMetrics](https://gatk.broadinstitute.org/hc/en-us/articles/360037055772-CollectInsertSizeMetrics-Picard-)\
&#x20;**BAM type:** Collapsed BAM

The data used to produce this figure are the values under the `MODE_INSERT_SIZE` column contained in the output file from CollectInsertSizeMetrics.

## Interpretation

Usually this plot has a specific shape as Cell free DNA has distinctive features due to the natural processes behind its fragmentation. One such feature is the set of 10-11 bp fluctuations that indicate the preferential splicing of fragments due to the number of bases per turn of the DNA helix, which causes a unique pattern of binding to the surface of histones.

The more pronounced peak at 166 bp indicate complete wrapping of the DNA around the histones' circumference, and similarly the second more pronounced peak indicates two complete wraps.

However in the CMO-CH panel we are using Buffy coat samples. These samples are mechanically sheared and thus do not exhibit these distinctive features, hence the different shape for their distribution in comparison to other reports.
