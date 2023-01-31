class: Workflow
cwlVersion: v1.0
id: aggregate_visualize
doc: >-
  This workflow takes output of per sample nucleo_qc.cwl and merges to generate a single report across one or multiple samples
label: aggregate_visualize
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 427.25
  - id: simplex_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 106.8125
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 747.6875
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
    'sbg:y': 320.4375
  - id: duplex_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 534.0625
  - id: collapsed_bam_stats_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 854.5
  - id: collapsed_bam_duplex_metrics_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 961.3125
  - id: athena_coverage_report_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1068.125
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 213.625
  - id: config
    type: File?
    'sbg:x': 360.765625
    'sbg:y': 587.46875
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 640.875
outputs:
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1450.7501220703125
    'sbg:y': 427.25
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1450.7501220703125
    'sbg:y': 640.875
  - id: multiqc_output_dir
    outputSource:
      - multiqc_1_10_1/multiqc_output_dir
    type: Directory
    'sbg:x': 1450.7501220703125
    'sbg:y': 534.0625
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
      - id: athena_coverage_report_dir
        source:
          - athena_coverage_report_dir
      - id: collapsed_extraction_files
        source:
          - collapsed_extraction_files
    out:
      - id: aggregate_qc_stats
    run: qc_aggregator/nucleo_qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 360.765625
    'sbg:y': 417.65625
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
    run: cwl-commandlinetools/cci_utils/0.3.0/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 870.1131591796875
    'sbg:y': 520.0625
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
    'sbg:x': 1177.999267578125
    'sbg:y': 520.0625
requirements:
  - class: SubworkflowFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:charlk@mskcc.org'
    's:identifier': ''
    's:name': Carmelina Charlambous
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/nucleo'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2020-11-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'