---
description: Description of Nucleo QC workflow inputs
---

# Workflow inputs

## Parameter Used by Tools

### Common Parameters Across Tools

|                                            **Argument Name**                                            |                                                                                        Summary                                                                                        |        Default Value       |
| :-----------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------: |
|                                           **uncollapsed\_bam**                                          |                                                                 Base-recalibrated uncollapsed BAM file.(**Required**)                                                                 |                            |
|                                            **collapsed\_bam**                                           |                                                                           Collapsed BAM file.(**Required**)                                                                           |                            |
|                                      **group\_reads\_by\_umi\_bam**                                     |                                                       Collapsed BAM file produced by fgbio's GroupReadsByUmi tool.(**Required**)                                                      |                            |
|                                             **duplex\_bam**                                             |                                                                             Duplex BAM file.(**Required**)                                                                            |                            |
|                                             **simplex\_bam**                                            |                                                                            Simplex BAM file.(**Required**)                                                                            |                            |
|                                             **sample\_name**                                            |                                                                             The sample name (**Required**)                                                                            |                            |
|                                            **sample\_group**                                            |                                                                        The sample group (e.g. the patient ID).                                                                        |                            |
|                                            **samples\_json**                                            |                                                                                                                                                                                       |                            |
|                                             **sample\_sex**                                             |                                                                        The sample sex (e.g. M). (**Required**)                                                                        |                            |
|                                           **bait\_intervals**                                           |                                                                            bait interval file.(**Required**)                                                                          |                            |
|                                          **target\_intervals**                                          |                                                                          targets interval file.(**Required**)                                                                         |                            |
|                                          **noise\_sites\_bed**                                          |                                                         BED file containing sites for duplex noise calculation.(**Required**)                                                         |                            |
|                                        **biometrics\_vcf\_file**                                        |                                                 VCF file containing sites for genotyping and contamination calculations.(**Required**)                                                |                            |
|                                              **reference**                                              | Reference sequence file. Please include ".fai", "^.dict", ".amb" , ".sa", ".bwt", ".pac", ".ann" as secondary files if they are not present in the same location as the ".fasta" file |                            |
|                                           **biometrics\_plot**                                          |                                                                          Whether to output biometrics plots.                                                                          |            true            |
|                                           **biometrics\_json**                                          |                                                                     Whether to output biometrics results in JSON.                                                                     |            true            |
|                                            **hotspots\_maf**                                            |                     <p>maf file including hotspot variants to be depicted in MultiQC report under 'Hotspot in Normals' section<br>(<strong>Required</strong>)</p>                     |                            |
| <p><strong>athena_thresholds</strong><br><strong></strong>(ignore if you do not need to run athena)</p> |                                                                             <p>coverage thresholds<br></p>                                                                            | 250, 500, 1000, 1500, 2000 |
|  <p><strong>athena_threshold</strong><br><strong></strong>(ignore if you do not need to run athena)</p> |                                                                                  main threshold value                                                                                 |             500            |
|   <p><strong>athena_summary</strong><br><strong></strong>(ignore if you do not need to run athena)</p>  |                                                      Enable display of athena summary findings at the top of the coverage report                                                      |            true            |
|     <p><strong>athena_vcf</strong><br><strong></strong>(ignore if you do not need to run athena)</p>    |                                                          VCF(s) of known SNPs/hotspots to check coverage (i.e HGMD, ClinVar)                                                          |                            |
|    <p><strong>mosdepth_bed</strong><br><strong></strong>(ignore if you do not need to run athena)</p>   |                                                               on target bed file used for mosdepth coverage calculation                                                               |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                                                                                                         |                                                                                                                                                                                       |                            |
|                              **collapsed\_biometrics\_coverage\_threshold**                             |                                                             Coverage threshold for biometrics collapsed BAM calculations.                                                             |             200            |
|                               **collapsed\_biometrics\_major\_threshold**                               |                                                        Major contamination threshold for biometrics collapsed BAM calculations.                                                       |              1             |
|                              **collapsed\_biometrics\_min\_base\_quality**                              |                                                       Minimum base quality threshold for biometrics collapsed BAM calculations.                                                       |              1             |
|                                 **collapsed\_biometrics\_min\_coverage**                                |                                                  Minimum coverage for a site to be included in biometrics collapsed BAM calculations.                                                 |             10             |
|                            **collapsed\_biometrics\_min\_homozygous\_thresh**                           |                                              Minimum threshold to consider a site as homozygous in biometrics collapsed BAM calculations.                                             |             0.1            |
|                             **collapsed\_biometrics\_min\_mapping\_quality**                            |                                                           Minimum mapping quality for biometrics collapsed BAM calculations.                                                          |             10             |
|                               **collapsed\_biometrics\_minor\_threshold**                               |                                                     Minor contamination threshold used for biometrics collapsed BAM calculations.                                                     |            0.02            |
|                                 **duplex\_biometrics\_major\_threshold**                                |                                                         Major contamination threshold for biometrics duplex BAM calculations.                                                         |             0.6            |
|                                **duplex\_biometrics\_min\_base\_quality**                               |                                                         Minimum base quality threshold for biometrics duplex BAM calculations.                                                        |              1             |
|                                  **duplex\_biometrics\_min\_coverage**                                  |                                                   Minimum coverage for a site to be included in biometrics duplex BAM calculations.                                                   |             10             |
|                             **duplex\_biometrics\_min\_homozygous\_thresh**                             |                                               Minimum threshold to consider a site as homozygous in biometrics duplex BAM calculations.                                               |             0.1            |
|                              **duplex\_biometrics\_min\_mapping\_quality**                              |                                                            Minimum mapping quality for biometrics duplex BAM calculations.                                                            |              1             |
|                                 **duplex\_biometrics\_minor\_threshold**                                |                                                       Minor contamination threshold used for biometrics duplex BAM calculations.                                                      |            0.02            |
|                                       **hsmetrics\_coverage\_cap**                                      |                                                                  Read coverage max for CollectHsMetrics calculations.                                                                 |            30000           |
|                                  **hsmetrics\_minimum\_base\_quality**                                  |                                                                Minimum base quality for CollectHsMetrics calculations.                                                                |             10             |
|                                 **hsmetrics\_minimum\_mapping\_quality**                                |                                                               Minimum mapping quality for CollectHsMetrics calculations.                                                              |             10             |
|                                       **sequence\_qc\_min\_basq**                                       |                                                             Minimum base quality threshold for sequence\_qc calculations.                                                             |              1             |
|                                       **sequence\_qc\_min\_mapq**                                       |                                                            Minimum mapping quality threshold for sequence\_qc calculations.                                                           |              1             |
|                                       **sequence\_qc\_threshold**                                       |                                                                  Noise threshold used for sequence\_qc calculations.                                                                  |            0.002           |
|                                        **sequence\_qc\_truncate**                                       |                                                            Whether to set the truncate parameter to True when using pysam.                                                            |                            |

## Template Inputs File

### Option 1: Input.yml example to run workflow enable mosdepth/athena to create coverage reports

{% code title="inputs.yaml" %}
```
omaf: true
output: null
reference:
  path: /juno/work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.fasta
  class: File
  secondaryFiles:
    - path: /work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.fasta.fai
      class: File
    - path: /work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.dict
      class: File
athena_vcf: null
duplex_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_duplex.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_duplex.bai
        class: File
sample_sex:
  - unknown
sample_name:
  - C-T496P0-N001-d01
simplex_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_simplex.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_simplex.bai
        class: File
athena_build: null
athena_cores: 4
athena_limit: null
hotspots_maf:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/hotspot-list-union-v1-v2_with_TERT.maf
  class: File
mosdepth_bed:
  path: /work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/panel_bed_file_athena_CH_nodup.bed
  class: File
sample_group:
  - C-T496P0
samples-json:
  path: /juno/work/ci/temp/897c0b7d-8631-4e55-8f86-5a435a84b9e1/samples_json.json
  class: File
collapsed_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_FM.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_FM.bai
        class: File
athena_summary: true
bait_intervals:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.interval_list
  class: File
fragment_count: 1
multiqc_config:
  path: /work/cch/production/resources/cmo-ch/versions/v1.0/multiqc_config/versions/v1.0/config_ch.yaml
  class: File
noise_sites_bed:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.bed
  class: File
athena_threshold: 500
filter_duplicate: 0
generic_counting: true
target_intervals:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.interval_list
  class: File
athena_thresholds:
  - 250
  - 500
  - 1000
  - 1500
  - 2000
biometrics_vcf_file:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/fp_tiling_snps.vcf
  class: File
athena_transcript_file: null
group_reads_by_umi_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_grouped.bam
    class: File
uncollapsed_bam_base_recal:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_uncollapsed_BR.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_uncollapsed_BR.bai
        class: File




```
{% endcode %}



### Option 2: Input.yml example to run workflow without mosdepth/athena&#x20;

{% code title="inputs.yaml" %}
```
omaf: true
output: null
reference:
  path: /juno/work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.fasta
  class: File
  secondaryFiles:
    - path: /work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.fasta.fai
      class: File
    - path: /work/cch/production/resources/reference/versions/hg19/Homo_sapiens_assembly19.dict
      class: File
duplex_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_duplex.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_duplex.bai
        class: File
sample_sex:
  - unknown
sample_name:
  - C-T496P0-N001-d01
simplex_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_simplex.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_simplex.bai
        class: File
hotspots_maf:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/hotspot-list-union-v1-v2_with_TERT.maf
  class: File
sample_group:
  - C-T496P0
samples-json:
  path: /juno/work/ci/temp/897c0b7d-8631-4e55-8f86-5a435a84b9e1/samples_json.json
  class: File
collapsed_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_FM.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_FM.bai
        class: File
bait_intervals:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.interval_list
  class: File
fragment_count: 1
multiqc_config:
  path: /work/cch/production/resources/cmo-ch/versions/v1.0/multiqc_config/versions/v1.0/config_ch.yaml
  class: File
noise_sites_bed:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.bed
  class: File
filter_duplicate: 0
generic_counting: true
target_intervals:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/picard_baits.interval_list
  class: File
biometrics_vcf_file:
  path: /juno/work/cch/production/resources/cmo-ch/versions/v1.0/regions_of_interest/versions/v1.0/fp_tiling_snps.vcf
  class: File
group_reads_by_umi_bam:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_collapsed_grouped.bam
    class: File
uncollapsed_bam_base_recal:
  - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_uncollapsed_BR.bam
    class: File
    secondaryFiles:
      - path: /juno/work/access/production/runs/voyager/staging/cmo_ch_nucelo/07cc97f0-c83b-41a2-a308-debdd6404968/C-T496P0-N001-d01_uncollapsed_BR.bai
        class: File



```
{% endcode %}

Option 3: Input yml to run nucleo\_aggregate\_visualize.cwl

```
athena_coverage_report_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/athena_coverage_report_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/athena_coverage_report_dir/C-40R694-N001-d01/
collapsed_bam_duplex_metrics_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/collapsed_bam_duplex_metrics_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/collapsed_bam_duplex_metrics_dir/C-40R694-N001-d01
collapsed_bam_stats_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/collapsed_bam_stats_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/collapsed_bam_stats_dir/C-40R694-N001-d01
collapsed_extraction_files:
  - class: File
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/C-JU5J5X-N001-d01/C-JU5J5X-N001-d01_collapsed.pickle
  - class: File
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/C-40R694-N001-d01/C-40R694-N001-d01_collapsed.pickle
config:
  class: File
  path: /work/bergerm1/bergerlab/charalk/projects/nucleo_qc/repos/220825_nucleo_qc/nucleo_qc_generation/multiqc_configs/config_ch.yaml
duplex_bam_sequence_qc_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/duplex_bam_sequence_qc_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/duplex_bam_sequence_qc_dir/C-40R694-N001-d01
duplex_bam_stats_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/duplex_bam_stats_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/duplex_bam_stats_dir/C-40R694-N001-d01
duplex_extraction_files:
  - class: File
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/C-JU5J5X-N001-d01/C-JU5J5X-N001-d01_duplex.pickle
  - class: File
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/C-40R694-N001-d01/C-40R694-N001-d01_duplex.pickle
gatk_mean_quality_by_cycle_recal_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/gatk_mean_quality_by_cycle_recal_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/gatk_mean_quality_by_cycle_recal_dir/C-40R694-N001-d01
samples-json:
  class: File
  path: /work/bergerm1/bergerlab/charalk/projects/nucleo_qc/repos/agg_vis_3167_C/samples_3167_C_sub.json
simplex_bam_stats_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/simplex_bam_stats_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/simplex_bam_stats_dir/C-40R694-N001-d01
uncollapsed_bam_stats_dir:
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/cf19eabf-29da-4448-a42d-d72af47e75b6/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/uncollapsed_bam_stats_dir/C-JU5J5X-N001-d01/
  - class: Directory
    path: /juno/work/access/production/runs/voyager/staging/cmo_ch_qc/90cbad6f-3361-49f2-9ef1-eabcaf90d352/multiqc_1.10.1.7/aggregate_parsed_stats/all_qc_files/uncollapsed_bam_stats_dir/C-40R694-N001-d01

```
