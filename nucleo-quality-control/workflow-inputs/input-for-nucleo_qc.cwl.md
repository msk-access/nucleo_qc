# Input for nucleo\_qc.cwl

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
