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
    'sbg:y': 746.890625
  - id: target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 106.703125
  - id: bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1600.328125
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 853.5625
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1493.65625
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1386.984375
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1280.3125
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1173.609375
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.40625
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 426.8125
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 640.1875
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 533.484375
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 320.109375
  - id: multiqc_config
    type: File?
    'sbg:x': 268.8914489746094
    'sbg:y': 1047.559814453125
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1066.90625
  - id: mosdepth_bed
    type: File?
    'sbg:x': 0
    'sbg:y': 960.234375
outputs:
  - id: multiqc_zip
    outputSource:
      - nucleo_aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1352.197265625
    'sbg:y': 693.4921875
  - id: multiqc_html
    outputSource:
      - nucleo_aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1352.197265625
    'sbg:y': 906.8359375
  - id: collapsed_bam_genotyping_maf
    outputSource:
      - qc_generator/collapsed_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 872.725341796875
    'sbg:y': 906.8671875
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 872.725341796875
    'sbg:y': 800.1640625
  - id: duplex_bam_genotyping_maf
    outputSource:
      - qc_generator/duplex_bam_genotyping_maf
    type:
      - File
      - type: array
        items: File
    'sbg:x': 872.725341796875
    'sbg:y': 693.4609375
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 872.725341796875
    'sbg:y': 1013.5703125
  - id: multiqc_output_dir
    outputSource:
      - nucleo_aggregate_visualize/multiqc_output_dir
    type: Directory
    'sbg:x': 1352.197265625
    'sbg:y': 800.1640625
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
      - id: duplex_bam_mosdepth_dir
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
    'sbg:x': 288.8125
    'sbg:y': 648.765625
  - id: nucleo_aggregate_visualize
    in:
      - id: duplex_extraction_files
        source:
          - qc_generator/duplex_biometrics_extract_pickle
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
      - id: simplex_bam_stats_dir
        source:
          - qc_generator/simplex_bam_stats_dir
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
    'sbg:x': 872.725341796875
    'sbg:y': 530.7265625
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement