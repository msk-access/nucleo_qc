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
    'sbg:y': 967.125
  - id: pool_b_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1074.015625
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1180.90625
  - id: pool_a_target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1287.796875
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1394.6875
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 1501.578125
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 2036.03125
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1929.140625
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1822.25
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1715.359375
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 432.671875
  - id: uncollapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 325.78125
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 646.453125
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 860.234375
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 218.890625
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 753.34375
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 539.5625
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1608.46875
  - id: hotspots_maf
    type: File
    'sbg:x': -264.7061767578125
    'sbg:y': 1071.8204345703125
outputs:
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type: 'Directory[]'
    'sbg:x': 932.4715576171875
    'sbg:y': 1175.796875
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type: 'Directory[]'
    'sbg:x': 932.4715576171875
    'sbg:y': 1924.03125
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1567.8502197265625
    'sbg:y': 967.125
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1567.8502197265625
    'sbg:y': 1074.015625
  - id: diree
    outputSource:
      - aggregate_visualize/diree
    type: Directory
    'sbg:x': 1567.8502197265625
    'sbg:y': 1287.796875
  - id: collapsed_biometrics_outdir
    outputSource:
      - aggregate_visualize/collapsed_biometrics_outdir
    type: Directory
    'sbg:x': 1567.8502197265625
    'sbg:y': 1394.6875
  - id: duplex_biometrics_outdir
    outputSource:
      - aggregate_visualize/duplex_biometrics_outdir
    type: Directory
    'sbg:x': 1567.8502197265625
    'sbg:y': 1180.90625
  - id: outdir
    outputSource:
      - aggregate_visualize/outdir
    type: 'Directory[]'
    'sbg:x': 1567.8502197265625
    'sbg:y': 860.234375
  - id: uncollapsed_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/uncollapsed_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 0
  - id: uncollapsed_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/uncollapsed_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 106.890625
  - id: simplex_bam_pool_b_dir
    outputSource:
      - qc_generator/simplex_bam_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 213.78125
  - id: simplex_bam_pool_a_dir
    outputSource:
      - qc_generator/simplex_bam_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 320.671875
  - id: gatk_mean_quality_by_cycle_recal_dir
    outputSource:
      - qc_generator/gatk_mean_quality_by_cycle_recal_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 427.5625
  - id: gatk_mean_quality_by_cycle_dir
    outputSource:
      - qc_generator/gatk_mean_quality_by_cycle_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 534.453125
  - id: duplex_biometrics_extract_pickle
    outputSource:
      - qc_generator/duplex_biometrics_extract_pickle
    type:
      - File
      - type: array
        items: File
    'sbg:x': 932.4715576171875
    'sbg:y': 641.34375
  - id: duplex_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/duplex_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 748.234375
  - id: duplex_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/duplex_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 855.125
  - id: duplex_bam_sequence_qc_dir
    outputSource:
      - qc_generator/duplex_bam_sequence_qc_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 962.015625
  - id: collapsed_biometrics_extract_pickle
    outputSource:
      - qc_generator/collapsed_biometrics_extract_pickle
    type:
      - File
      - type: array
        items: File
    'sbg:x': 932.4715576171875
    'sbg:y': 1282.6875
  - id: collapsed_bam_stats_pool_b_dir
    outputSource:
      - qc_generator/collapsed_bam_stats_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 1389.578125
  - id: collapsed_bam_stats_pool_a_dir
    outputSource:
      - qc_generator/collapsed_bam_stats_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 1496.46875
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    outputSource:
      - qc_generator/collapsed_bam_duplex_metrics_pool_b_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 1710.25
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    outputSource:
      - qc_generator/collapsed_bam_duplex_metrics_pool_a_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 932.4715576171875
    'sbg:y': 1817.140625
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_generator/duplex_bam_genotyping_maf
    type: File
    'sbg:x': 932.4715576171875
    'sbg:y': 1068.90625
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_generator/collapsed_bam_genotyping_maf
    type: File
    'sbg:x': 932.4715576171875
    'sbg:y': 1603.359375
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
    'sbg:x': 288.8125
    'sbg:y': 1001.4609375
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
    'sbg:x': 932.4715576171875
    'sbg:y': 2142.921875
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
