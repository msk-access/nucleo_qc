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
    'sbg:y': 639.8203125
  - id: pool_b_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 746.4609375
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 853.125
  - id: pool_a_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 959.7890625
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1066.453125
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 1173.046875
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1812.890625
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1706.296875
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1599.703125
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1493.0390625
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 106.59375
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 319.921875
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 533.1796875
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 426.515625
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 213.2578125
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1279.7109375
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1386.375
outputs:
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1513.61279296875
    'sbg:y': 799.8515625
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1513.61279296875
    'sbg:y': 1013.0390625
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_generator/collapsed_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 921.3226318359375
    'sbg:y': 801.375
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 921.3226318359375
    'sbg:y': 694.7109375
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_generator/duplex_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 921.3226318359375
    'sbg:y': 588.046875
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 921.3226318359375
    'sbg:y': 908.0390625
  - id: multiqc_output_dir
    outputSource:
      - aggregate_visualize/multiqc_output_dir
    type: Directory
    'sbg:x': 1513.61279296875
    'sbg:y': 906.4453125
  - id: aggregate_parsed_stats
    outputSource:
      - aggregate_visualize/aggregate_parsed_stats
    type: Directory
    'sbg:x': 1390.41552734375
    'sbg:y': 1331.471435546875
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
      - uncollapsed_bam_base_recal
      - sample_sex
      - sample_name
      - sample_group
      - simplex_bam
    scatterMethod: dotproduct
    'sbg:x': 288.8125
    'sbg:y': 787.375
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
      - id: multiqc_output_dir
      - id: aggregate_parsed_stats
    run: ./aggregate_visualize.cwl
    label: aggregate_visualize
    'sbg:x': 921.3226318359375
    'sbg:y': 1119.703125
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
