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
    'sbg:y': 320.625
  - id: simplex_bam_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 975.4375
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 641.25
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
    'sbg:y': 213.75
  - id: duplex_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 427.5
  - id: collapsed_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 748.125
  - id: collapsed_bam_duplex_metrics_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 855
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 106.875
  - id: config
    type: File?
    'sbg:x': 360.75
    'sbg:y': 480.9375
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 534.375
outputs:
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1418.701416015625
    'sbg:y': 320.625
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1418.701416015625
    'sbg:y': 534.375
  - id: multiqc_output_dir
    outputSource:
      - multiqc_1_10_1/multiqc_output_dir
    type: Directory
    'sbg:x': 1418.701416015625
    'sbg:y': 427.5
steps:
  - id: qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - duplex_extraction_files
      - id: simplex_bam_dir
        source:
          - simplex_bam_dir
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
    run: cwl-commandlinetools/access_utils/0.1.1/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 838.0643920898438
    'sbg:y': 413.5
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
    'sbg:x': 1145.950439453125
    'sbg:y': 413.5
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
