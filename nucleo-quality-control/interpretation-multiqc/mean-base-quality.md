# Mean Base Quality

## Introduction

This figure below illustrates the mean base quality by cycle BaseQualityScoreRecalibration (BQSR). The sequencer uses the difference in intensity of the fluorescence of the bases to give an estimate of the quality of the base that has been read. The BQSR tool from GATK recalculates these values based on the empirical error rate of the reads themselves, which is a more accurate estimate of the original quality of the read.

![](<../../../.gitbook/assets/iScreen Shoter - 2022-07-21 123205.462.png>)

## Methods

**Tool used:** [GATK-MeanQualityByCycle](https://gatk.broadinstitute.org/hc/en-us/articles/360037224392-MeanQualityByCycle-Picard-)\
&#x20;**BAM type:** Uncollapsed BAM.\
&#x20;

## Interpretation

It is normal to see a downwards trend in pre and post-recalibration base quality towards the ends of the reads. Average post-recalibration quality scores should be above 20. Spikes in quality may be indicative of a sequencer artifact.
