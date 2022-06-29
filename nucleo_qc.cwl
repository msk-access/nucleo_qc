class: Workflow
cwlVersion: v1.0
id: nucleo_qc
label: nucleo_qc
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 748.234375
  - id: target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 106.890625
  - id: bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1710.25
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 855.125
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1603.359375
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1496.46875
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1389.578125
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1282.6875
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.78125
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 427.5625
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 641.34375
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 534.453125
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 320.671875
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 962.015625
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1175.796875
  - id: mosdepth_bed
    type: File?
    'sbg:x': 0
    'sbg:y': 1068.90625
outputs:
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1395.302490234375
    'sbg:y': 748.234375
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1395.302490234375
    'sbg:y': 962.015625
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_generator/collapsed_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 872.6940307617188
    'sbg:y': 785.125
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 872.6940307617188
    'sbg:y': 678.234375
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_generator/duplex_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 872.6940307617188
    'sbg:y': 571.34375
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 872.6940307617188
    'sbg:y': 892.015625
  - id: multiqc_output_dir
    outputSource:
      - aggregate_visualize/multiqc_output_dir
    type: Directory
    'sbg:x': 1395.302490234375
    'sbg:y': 855.125
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
      - id: target_intervals
        source: target_intervals
      - id: bait_intervals
        source: bait_intervals
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
      - id: mosdepth_bed
        source: mosdepth_bed
    out:
      - id: uncollapsed_bam_stats_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
      - id: collapsed_bam_biometrics_dir
      - id: collapsed_bam_duplex_metrics_dir
      - id: collapsed_bam_stats_dir
      - id: simplex_bam_stats_dir
      - id: duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_dir
      - id: duplex_bam_biometrics_dir
      - id: duplex_bam_genotyping_maf
      - id: duplex_biometrics_extract_pickle
      - id: collapsed_biometrics_extract_pickle
      - id: collapsed_bam_genotyping_maf
    run: qc_generator/nucleo_qc_generator.cwl
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
    'sbg:x': 288.78125
    'sbg:y': 757.125
  - id: aggregate_visualize
    in:
      - id: duplex_extraction_files
        source:
          - qc_generator/duplex_biometrics_extract_pickle
      - id: simplex_bam_stats_dir
        source:
          - qc_generator/simplex_bam_stats_dir
      - id: collapsed_extraction_files
        source:
          - qc_generator/collapsed_biometrics_extract_pickle
      - id: uncollapsed_bam_stats_dir
        source:
          - qc_generator/uncollapsed_bam_stats_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_recal_dir
      - id: duplex_bam_stats_dir
        source:
          - qc_generator/duplex_bam_stats_dir
      - id: collapsed_bam_stats_dir
        source:
          - qc_generator/collapsed_bam_stats_dir
      - id: collapsed_bam_duplex_metrics_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_dir
      - id: samples-json
        source: samples-json
      - id: config
        source: multiqc_config
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
    out:
      - id: multiqc_zip
      - id: multiqc_html
      - id: multiqc_output_dir
    run: ./nucleo_aggregate_visualize.cwl
    label: aggregate_visualize
    'sbg:x': 872.6940307617188
    'sbg:y': 1068.90625
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
