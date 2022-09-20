# GC Bias

The figure plots below represent the normalized coverage against the % GC content from the CMO-CH target regions. Each line is data from a single sample.

![](<../../../.gitbook/assets/iScreen Shoter - 2022-07-21 122859.982.png>)

## Methods

**Tool used:** [GATK-CollectHsMetrics](https://gatk.broadinstitute.org/hc/en-us/articles/360036856051-CollectHsMetrics-Picard-)\
&#x20;**BAM type:** (1) collapsed BAM and (2) uncollapsed BAM.

The data used to produce this figure are the values under the `normalized_coverage` and `%gc` columns, which are in the `*_per_target_coverage.txt` output file from CollectHsMetrics. For each sample separately, the % GC content for each target region is calculated, followed by binning the target regions by their GC content (in 5% intervals). Then for each bin, the mean coverage is calculated and then normalized across all regions that fall into each GC bin.

## Interpretation

Extreme base compositions, i.e., GC-poor or GC-rich sequences, lead to an uneven coverage or even no coverage of reads across the genome. This can affect downstream small variant and copy number calling. Both of which rely on consistent sequencing depth across all regions. Ideally this plot should be as flat as possible. High GC-rich regions have a a decrease in coverage as these regions are harder to sequence.
