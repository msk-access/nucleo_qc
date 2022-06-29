class: Workflow
cwlVersion: v1.0
id: aggregate_visualize
label: aggregate_visualize
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 428
  - id: simplex_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 107
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 749
  - id: uncollapsed_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 0
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 321
  - id: duplex_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 535
  - id: collapsed_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 856
  - id: collapsed_bam_duplex_metrics_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 963
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 214
  - id: config
    type: File?
    'sbg:x': 360.765625
    'sbg:y': 535
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 642
outputs:
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1440.8917236328125
    'sbg:y': 374.5
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1440.8917236328125
    'sbg:y': 588.5
  - id: multiqc_output_dir
    outputSource:
      - multiqc_1_10_1/multiqc_output_dir
    type: Directory
    'sbg:x': 1440.8917236328125
    'sbg:y': 481.5
steps:
  - id: qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - duplex_extraction_files
      - id: simplex_bam_stats_dir
        source:
          - simplex_bam_stats_dir
      - id: duplex_bam_sequence_qc_dir
        source:
          - duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_dir
        source:
          - duplex_bam_stats_dir
      - id: collapsed_bam_stats_dir
        source:
          - collapsed_bam_stats_dir
      - id: collapsed_bam_duplex_metrics_dir
        source:
          - collapsed_bam_duplex_metrics_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - gatk_mean_quality_by_cycle_recal_dir
      - id: uncollapsed_bam_stats_dir
        source:
          - uncollapsed_bam_stats_dir
      - id: collapsed_extraction_files
        source:
          - collapsed_extraction_files
    out:
      - id: aggregate_qc_stats
    run: qc_aggregator/nucleo_qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 360.765625
    'sbg:y': 372
  - id: general_stats_parse
    in:
      - id: directory
        source: qc_aggregator/aggregate_qc_stats
      - id: samples-json
        source: samples-json
      - id: config
        source: config
    out:
      - id: aggregate_parsed_stats
    run: cwl-commandlinetools/cci_utils/0.2.1/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 860.2547607421875
    'sbg:y': 467.5
  - id: multiqc_1_10_1
    in:
      - id: qc_files_dir
        source: general_stats_parse/aggregate_parsed_stats
      - id: config
        source: config
    out:
      - id: multiqc_output_dir
      - id: multiqc_html
      - id: multiqc_zip
    run: cwl-commandlinetools/multiqc/1.10.1.7/multiqc.cwl
    'sbg:x': 1168.140869140625
    'sbg:y': 467.5
requirements:
  - class: SubworkflowFeatureRequirement
