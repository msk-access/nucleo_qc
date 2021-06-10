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
    'sbg:y': 859.578125
  - id: pool_b_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 966.375
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1073.171875
  - id: pool_a_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1179.96875
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1286.765625
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 1393.5625
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1927.546875
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1820.75
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1713.953125
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1607.15625
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 325.59375
  - id: uncollapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 218.796875
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 539.1875
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 752.78125
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 112
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 645.984375
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 432.390625
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1500.359375
outputs:
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type: 'Directory[]'
    'sbg:x': 908.3873901367188
    'sbg:y': 1067.96875
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type: 'Directory[]'
    'sbg:x': 908.3873901367188
    'sbg:y': 1708.75
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1543.76611328125
    'sbg:y': 859.578125
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1543.76611328125
    'sbg:y': 966.375
  - id: diree
    outputSource:
      - aggregate_visualize/diree
    type: Directory
    'sbg:x': 1543.76611328125
    'sbg:y': 1179.96875
  - id: collapsed_biometrics_outdir
    outputSource:
      - aggregate_visualize/collapsed_biometrics_outdir
    type: Directory
    'sbg:x': 1543.76611328125
    'sbg:y': 1286.765625
  - id: duplex_biometrics_outdir
    outputSource:
      - aggregate_visualize/duplex_biometrics_outdir
    type: Directory
    'sbg:x': 1543.76611328125
    'sbg:y': 1073.171875
  - id: outdir
    outputSource:
      - aggregate_visualize/outdir
    type: 'Directory[]'
    'sbg:x': 1543.76611328125
    'sbg:y': 752.78125
  - id: uncollapsed_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/uncollapsed_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 0
  - id: uncollapsed_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/uncollapsed_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 106.796875
  - id: simplex_bam_pool_b_dir
    outputSource:
      - qc_generator/simplex_bam_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 213.59375
  - id: simplex_bam_pool_a_dir
    outputSource:
      - qc_generator/simplex_bam_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 320.390625
  - id: gatk_mean_quality_by_cycle_recal_dir
    outputSource:
      - qc_generator/gatk_mean_quality_by_cycle_recal_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 427.1875
  - id: gatk_mean_quality_by_cycle_dir
    outputSource:
      - qc_generator/gatk_mean_quality_by_cycle_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 533.984375
  - id: duplex_biometrics_extract_pickle
    outputSource:
      - qc_generator/duplex_biometrics_extract_pickle
    type:
      - File
      - type: array
        items: File
    'sbg:x': 908.3873901367188
    'sbg:y': 640.78125
  - id: duplex_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/duplex_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 747.578125
  - id: duplex_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/duplex_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 854.375
  - id: duplex_bam_sequence_qc_dir
    outputSource:
      - qc_generator/duplex_bam_sequence_qc_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 961.171875
  - id: collapsed_biometrics_extract_pickle
    outputSource:
      - qc_generator/collapsed_biometrics_extract_pickle
    type:
      - File
      - type: array
        items: File
    'sbg:x': 908.3873901367188
    'sbg:y': 1174.765625
  - id: collapsed_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/collapsed_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 1281.5625
  - id: collapsed_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/collapsed_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 1388.359375
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    outputSource:
      - qc_generator/collapsed_bam_duplex_metrics_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 1495.15625
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    outputSource:
      - qc_generator/collapsed_bam_duplex_metrics_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 908.3873901367188
    'sbg:y': 1601.953125
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
      - id: duplex_biometrics_extract_pickle
      - id: collapsed_biometrics_extract_pickle
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
    'sbg:x': 288.8125
    'sbg:y': 907.7734375
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
      - id: duplex_biometrics_outdir
      - id: collapsed_biometrics_outdir
      - id: outdir
      - id: multiqc_zip
      - id: multiqc_html
      - id: diree
    run: ./aggregate_visualize.cwl
    label: aggregate_visualize
    'sbg:x': 908.3873901367188
    'sbg:y': 1927.546875
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
