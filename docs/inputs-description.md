---
description: Input files and parameters required to run workflow
---

# Inputs Description

{% hint style="warning" %}
Common workflow language execution engines accept two types of input that are [JSON](https://json.org) or [YAML](https://yaml.org), please make sure to use one of these while generating the input file. For more information refer to: [http://www.commonwl.org/user\_guide/yaml/](http://www.commonwl.org/user_guide/yaml/)
{% endhint %}

## Parameter Used by Tools

### Common Parameters Across Tools

| **Argument Name** | Summary | Default Value |
| :---: | :---: | :---: |
| **uncollapsed_bam** | Base-recalibrated uncollapsed BAM file.\(**Required**\) | |
| **collapsed_bam** | Collapsed BAM file.\(**Required**\) |  |
| **group_reads_by_umi_bam** | Collapsed BAM file produced by fgbio's GroupReadsByUmi tool.\(**Required**\) |  |
| **duplex_bam** | Duplex BAM file.\(**Required**\) |  |
| **simplex_bam** | Simplex BAM file.\(**Required**\) |  |
| **sample_name** | The sample name \(**Required**\) |  |
| **sample_group** | The sample group (e.g. the patient ID). |  |
| **sample_sex** | The sample sex (e.g. M). \(**Required**\) |  |
| **pool_a_bait_intervals** | The Pool A bait interval file.\(**Required**\) | |
| **pool_a_target_intervals** | The Pool A targets interval file.\(**Required**\) | |
| **pool_b_bait_intervals** | The Pool B bait interval file.\(**Required**\) | |
| **pool_b_target_intervals** | The Pool B targets interval file.\(**Required**\) | |
| **noise_sites_bed** | BED file containing sites for duplex noise calculation.\(**Required**\) | |
| **biometrics_vcf_file** | VCF file containing sites for genotyping and contamination calculations.\(**Required**\) | |
| **reference** | Reference sequence file. Please include ".fai", "^.dict", ".amb" , ".sa", ".bwt", ".pac", ".ann" as secondary files if they are not present in the same location as the ".fasta" file |  |
| **biometrics_plot** | Whether to output biometrics plots. | true |
| **biometrics_json** | Whether to output biometrics results in JSON. | true |
| **collapsed_biometrics_coverage_threshold** | Coverage threshold for biometrics collapsed BAM calculations. | 200 |
| **collapsed_biometrics_major_threshold** | Major contamination threshold for biometrics collapsed BAM calculations. | 1 |
| **collapsed_biometrics_min_base_quality** | Minimum base quality threshold for biometrics collapsed BAM calculations. | 1 |
| **collapsed_biometrics_min_coverage** | Minimum coverage for a site to be included in biometrics collapsed BAM calculations. | 10 |
| **collapsed_biometrics_min_homozygous_thresh** | Minimum threshold to consider a site as homozygous in biometrics collapsed BAM calculations. | 0.1 |
| **collapsed_biometrics_min_mapping_quality** | Minimum mapping quality for biometrics collapsed BAM calculations. | 10 |
| **collapsed_biometrics_minor_threshold** |  Minor contamination threshold used for biometrics collapsed BAM calculations. | 0.02 |
| **duplex_biometrics_major_threshold** | Major contamination threshold for biometrics duplex BAM calculations. | 0.6 |
| **duplex_biometrics_min_base_quality** | Minimum base quality threshold for biometrics duplex BAM calculations. | 1 |
| **duplex_biometrics_min_coverage** | Minimum coverage for a site to be included in biometrics duplex BAM calculations. | 10 |
| **duplex_biometrics_min_homozygous_thresh** | Minimum threshold to consider a site as homozygous in biometrics duplex BAM calculations. | 0.1 |
| **duplex_biometrics_min_mapping_quality** | Minimum mapping quality for biometrics duplex BAM calculations. | 1 |
| **duplex_biometrics_minor_threshold** | Minor contamination threshold used for biometrics duplex BAM calculations. | 0.02 |
| **hsmetrics_coverage_cap** | Read coverage max for CollectHsMetrics calculations. | 30000 |
| **hsmetrics_minimum_base_quality** | Minimum base quality for CollectHsMetrics calculations. | 10 |
| **hsmetrics_minimum_mapping_quality** | Minimum mapping quality for CollectHsMetrics calculations. | 10 |
| **sequence_qc_min_basq** | Minimum base quality threshold for sequence_qc calculations. | 1 |
| **sequence_qc_min_mapq** | Minimum mapping quality threshold for sequence_qc calculations. | 1 |
| **sequence_qc_threshold** | Noise threshold used for sequence_qc calculations. | 0.002 |
| **sequence_qc_truncate** | Whether to set the truncate parameter to True when using pysam. | |


## Template Inputs File

{% code title="inputs.yaml" %}
```text
biometrics_bed_file:
  class: File
  path: /path/to/MSK-ACCESS-v1_0-probe-B.sorted.bed
biometrics_json: true
biometrics_plot: true
biometrics_vcf_file:
  class: File
  path: /path/to/MSK-ACCESS-v1_0-TilingaAndFpSNPs.vcf
collapsed_bam:
- class: File
  path: /path/to/bam
collapsed_biometrics_coverage_threshold: null
collapsed_biometrics_major_threshold: null
collapsed_biometrics_min_base_quality: null
collapsed_biometrics_min_coverage: null
collapsed_biometrics_min_homozygous_thresh: null
collapsed_biometrics_min_mapping_quality: null
collapsed_biometrics_minor_threshold: null
duplex_bam:
- class: File
  path: /path/to/bam
duplex_biometrics_major_threshold: null
duplex_biometrics_min_base_quality: null
duplex_biometrics_min_coverage: null
duplex_biometrics_min_homozygous_thresh: null
duplex_biometrics_min_mapping_quality: null
duplex_biometrics_minor_threshold: null
group_reads_by_umi_bam:
- class: File
  path: /path/to/bam
hsmetrics_coverage_cap: 30000
hsmetrics_minimum_base_quality: 1
hsmetrics_minimum_mapping_quality: 1
noise_sites_bed:
  class: File
  path: /path/to/MSK-ACCESS-v1_0-probe-A_no_msi_sorted_deduped.bed
pool_a_bait_intervals:
  class: File
  path: /path/to/MSK-ACCESS-v1_0-probe-A_baits.sorted.interval_list
pool_a_target_intervals:
  class: File
  path: /path/to/MSK-ACCESS-v1_0_panelA_targets.interval_list
pool_b_bait_intervals:
  class: File
  path: /path/to/MSK-ACCESS-v1_0-probe-B_baits.sorted.interval_list
pool_b_target_intervals:
  class: File
  path: /path
reference:
  class: File
  path: /path
sample_group:
- patient_id
sample_name:
- sample_id
sample_sex:
- M
sample_type:
- tumor
sequence_qc_min_basq: 1
sequence_qc_min_mapq: 1
sequence_qc_threshold: null
sequence_qc_truncate: null
simplex_bam:
- class: File
  path: /path
uncollapsed_bam:
- class: File
  path: /path
uncollapsed_bam_base_recal:
- class: File
  path: /path
```
{% endcode %}
