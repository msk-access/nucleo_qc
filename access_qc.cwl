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
    'sbg:y': 640.6875
  - id: pool_b_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 747.46875
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 854.25
  - id: pool_a_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 961.03125
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1067.8125
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 1174.59375
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1708.5
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1281.375
  - id: collapsed_bam
    type: File
    'sbg:x': 0
    'sbg:y': 1601.71875
  - id: duplex_bam
    type: File
    'sbg:x': 0
    'sbg:y': 1494.9375
  - id: group_reads_by_umi_bam
    type: File
    'sbg:x': 0
    'sbg:y': 1388.15625
  - id: simplex_bam
    type: File
    'sbg:x': 0
    'sbg:y': 213.5625
  - id: uncollapsed_bam_base_recal
    type: File
    'sbg:x': 0
    'sbg:y': 0
  - id: uncollapsed_bam
    type: File
    'sbg:x': 0
    'sbg:y': 106.78125
  - id: sample_sex
    type: string?
    'sbg:x': 0
    'sbg:y': 320.34375
  - id: sample_name
    type: string?
    'sbg:x': 0
    'sbg:y': 427.125
  - id: sample_group
    type: string
    'sbg:x': 0
    'sbg:y': 533.90625
outputs:
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type: Directory
    'sbg:x': 920.201171875
    'sbg:y': 756.25
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type: Directory
    'sbg:x': 920.201171875
    'sbg:y': 649.46875
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1800.857177734375
    'sbg:y': 747.46875
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1800.857177734375
    'sbg:y': 854.25
  - id: diree
    outputSource:
      - multiqc_1_10_1/diree
    type: Directory
    'sbg:x': 1800.857177734375
    'sbg:y': 961.03125
  - id: duplex_biometrics_outdir
    outputSource:
      - access_qc_aggregator/duplex_biometrics_outdir
    type: Directory
    'sbg:x': 1528.107177734375
    'sbg:y': 854.25
  - id: collapsed_biometrics_outdir
    outputSource:
      - access_qc_aggregator/collapsed_biometrics_outdir
    type: Directory
    'sbg:x': 1528.107177734375
    'sbg:y': 961.03125
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
      - id: biometrics_vcf_file
        source: biometrics_vcf_file
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
      - id: duplex_bam_biometrics_extract_file
      - id: collapsed_bam_biometrics_extract_file
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
    'sbg:x': 288.796875
    'sbg:y': 742.25
  - id: multiqc_1_10_1
    in:
      - id: qc_list_of_dirs
        source:
          - access_qc_aggregator/outdir
      - id: config
        source: multiqc_config
    out:
      - id: diree
      - id: multiqc_html
      - id: multiqc_zip
    run: cwl-commandlinetools/multiqc_1.10.1/multiqc_1.10.1.cwl
    'sbg:x': 1528.107177734375
    'sbg:y': 733.359375
  - id: access_qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - qc_generator/duplex_bam_biometrics_extract_file
      - id: simplex_bam_pool_a_dir
        source:
          - qc_generator/simplex_bam_pool_a_dir
      - id: simplex_bam_pool_b_dir
        source:
          - qc_generator/simplex_bam_pool_b_dir
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_pool_a_dir
        source:
          - qc_generator/duplex_bam_stats_pool_a_dir
      - id: duplex_bam_stats_pool_b_dir
        source:
          - qc_generator/duplex_bam_stats_pool_b_dir
      - id: collapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_a_dir
      - id: collapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_b_dir
      - id: collapsed_bam_duplex_metrics_pool_a_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_a_dir
      - id: collapsed_bam_duplex_metrics_pool_b_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_b_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_recal_dir
      - id: gatk_mean_quality_by_cycle_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_dir
      - id: uncollapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_b_dir
      - id: uncollapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_a_dir
      - id: collapsed_extraction_files
        source:
          - qc_generator/collapsed_bam_biometrics_extract_file
    out:
      - id: outdir
      - id: duplex_biometrics_outdir
      - id: collapsed_biometrics_outdir
    run: ../cwl_subworkflows/access_qc_aggregator/access_qc_aggregator.cwl
    label: access_qc_aggregator
    'sbg:x': 920.201171875
    'sbg:y': 373.8220520019531
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
