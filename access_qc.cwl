class: Workflow
cwlVersion: v1.0
id: access_qc
label: access_qc
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 746.75
  - id: pool_b_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 853.4453125
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 960.140625
  - id: pool_a_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1066.8359375
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1173.53125
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 1280.1875
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1920.28125
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1813.625
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1706.96875
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1600.2734375
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.3125
  - id: uncollapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 106.65625
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 426.703125
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 640.0546875
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 533.359375
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 320.0078125
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1386.8828125
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1493.578125
outputs:
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1501.5306396484375
    'sbg:y': 906.8125
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1501.5306396484375
    'sbg:y': 1013.46875
  - id: diree
    outputSource:
      - aggregate_visualize/diree
    type: Directory
    'sbg:x': 1501.5306396484375
    'sbg:y': 1120.125
  - id: outdir
    outputSource:
      - aggregate_visualize/outdir
    type: Directory
    'sbg:x': 1501.5306396484375
    'sbg:y': 800.15625
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_generator/collapsed_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 932.876708984375
    'sbg:y': 848.1015625
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.876708984375
    'sbg:y': 741.40625
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_generator/duplex_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 806.7962036132812
    'sbg:y': 452.60040283203125
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 872.4326782226562
    'sbg:y': 587.4212646484375
steps:
  - id: qc_generator
    in:
      - id: reference
        source: reference
      - id: duplex_bam
        source: duplex_bam
      - id: collapsed_bam
        source: collapsed_bam
      - id: group_reads_by_umi_bam
        source: group_reads_by_umi_bam
      - id: uncollapsed_bam
        source: uncollapsed_bam
      - id: uncollapsed_bam_base_recal
        source: uncollapsed_bam_base_recal
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: noise_sites_bed
        source: noise_sites_bed
      - id: sample_sex
        source: sample_sex
      - id: sample_name
        source: sample_name
      - id: sample_group
        source: sample_group
      - id: simplex_bam
        source: simplex_bam
      - id: vcf_file
        source: biometrics_vcf_file
      - id: hotspots_maf
        source: hotspots_maf
    out:
      - id: uncollapsed_bam_stats_pool_a_dir
      - id: uncollapsed_bam_stats_pool_b_dir
      - id: gatk_mean_quality_by_cycle_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
      - id: collapsed_bam_biometrics_dir
      - id: collapsed_bam_duplex_metrics_pool_b_dir
      - id: collapsed_bam_duplex_metrics_pool_a_dir
      - id: collapsed_bam_stats_pool_b_dir
      - id: collapsed_bam_stats_pool_a_dir
      - id: simplex_bam_pool_a_dir
      - id: simplex_bam_pool_b_dir
      - id: duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_pool_a_dir
      - id: duplex_bam_stats_pool_b_dir
      - id: duplex_bam_biometrics_dir
      - id: duplex_bam_genotyping_maf
      - id: duplex_biometrics_extract_pickle
      - id: collapsed_biometrics_extract_pickle
      - id: collapsed_bam_genotyping_maf
    run: qc_generator/qc_generator.cwl
    label: qc_generator
    scatter:
      - duplex_bam
      - collapsed_bam
      - group_reads_by_umi_bam
      - uncollapsed_bam
      - uncollapsed_bam_base_recal
      - sample_sex
      - sample_name
      - sample_group
      - simplex_bam
    scatterMethod: dotproduct
    'sbg:x': 288.796875
    'sbg:y': 834.1015625
  - id: aggregate_visualize
    in:
      - id: duplex_extraction_files
        source:
          - qc_generator/duplex_biometrics_extract_pickle
      - id: collapsed_extraction_files
        source:
          - qc_generator/collapsed_biometrics_extract_pickle
      - id: uncollapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_a_dir
      - id: simplex_bam_pool_b_dir
        source:
          - qc_generator/simplex_bam_pool_b_dir
      - id: simplex_bam_pool_a_dir
        source:
          - qc_generator/simplex_bam_pool_a_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_recal_dir
      - id: gatk_mean_quality_by_cycle_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_dir
      - id: duplex_bam_stats_pool_b_dir
        source:
          - qc_generator/duplex_bam_stats_pool_b_dir
      - id: duplex_bam_stats_pool_a_dir
        source:
          - qc_generator/duplex_bam_stats_pool_a_dir
      - id: collapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_b_dir
      - id: collapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_a_dir
      - id: collapsed_bam_duplex_metrics_pool_b_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_b_dir
      - id: collapsed_bam_duplex_metrics_pool_a_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_a_dir
      - id: samples-json
        source: samples-json
      - id: config
        source: multiqc_config
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
      - id: uncollapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_b_dir
    out:
      - id: multiqc_zip
      - id: multiqc_html
      - id: diree
      - id: outdir
    run: ./aggregate_visualize.cwl
    label: aggregate_visualize
    'sbg:x': 932.876708984375
    'sbg:y': 1173.4921875
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
