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
    'sbg:y': 640.09375
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1066.71875
  - id: uncollapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 106.65625
  - id: simplex_bam_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 213.3125
  - id: simplex_bam_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 319.96875
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 533.3984375
  - id: duplex_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 746.75
  - id: duplex_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 853.40625
  - id: collapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1173.375
  - id: collapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1280.03125
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1386.6875
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1493.34375
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 426.6640625
  - id: config
    type: File?
    'sbg:x': 582.6686401367188
    'sbg:y': 940.3840942382812
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 960.0625
  - id: uncollapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 0
outputs:
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1788.267333984375
    'sbg:y': 640.015625
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1788.267333984375
    'sbg:y': 853.328125
  - id: outdir
    outputSource:
      - stats_agg/directory
    type: Directory
    'sbg:x': 1515
    'sbg:y': 569.5472412109375
  - id: multiqc_output_dir
    outputSource:
      - multiqc_1_10_1/multiqc_output_dir
    type: Directory
    'sbg:x': 1788.267333984375
    'sbg:y': 746.671875
steps:
  - id: qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - duplex_extraction_files
      - id: simplex_bam_pool_a_dir
        source:
          - simplex_bam_pool_a_dir
      - id: simplex_bam_pool_b_dir
        source:
          - simplex_bam_pool_b_dir
      - id: duplex_bam_sequence_qc_dir
        source:
          - duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_pool_a_dir
        source:
          - duplex_bam_stats_pool_a_dir
      - id: duplex_bam_stats_pool_b_dir
        source:
          - duplex_bam_stats_pool_b_dir
      - id: collapsed_bam_stats_pool_a_dir
        source:
          - collapsed_bam_stats_pool_a_dir
      - id: collapsed_bam_stats_pool_b_dir
        source:
          - collapsed_bam_stats_pool_b_dir
      - id: collapsed_bam_duplex_metrics_pool_a_dir
        source:
          - collapsed_bam_duplex_metrics_pool_a_dir
      - id: collapsed_bam_duplex_metrics_pool_b_dir
        source:
          - collapsed_bam_duplex_metrics_pool_b_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - gatk_mean_quality_by_cycle_recal_dir
      - id: uncollapsed_bam_stats_pool_b_dir
        source:
          - uncollapsed_bam_stats_pool_b_dir
      - id: uncollapsed_bam_stats_pool_a_dir
        source:
          - uncollapsed_bam_stats_pool_a_dir
      - id: collapsed_extraction_files
        source:
          - collapsed_extraction_files
    out:
      - id: directory_1
    run: qc_aggregator/qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 397.1875
    'sbg:y': 655.6328125
  - id: general_stats_parse
    in:
      - id: directory
        source: qc_aggregator/directory_1
      - id: samples-json
        source: samples-json
      - id: config
        source: config
    out:
      - id: sample_meta_tumor
      - id: sample_meta_normal
      - id: sequence_qc_mqc
      - id: sequence_qc_substitution_mqc
      - id: sequence_qc_mqc_yaml
      - id: minor_contamination_sites_mqc
      - id: qc_criteria
    run: cwl-commandlinetools/access_utils/0.1.1/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 872.410888671875
    'sbg:y': 786.8911743164062
  - id: stats_agg
    in:
      - id: files
        source:
          - general_stats_parse/sample_meta_tumor
          - general_stats_parse/sample_meta_normal
          - general_stats_parse/sequence_qc_mqc
          - general_stats_parse/sequence_qc_mqc_yaml
          - general_stats_parse/sequence_qc_substitution_mqc
          - general_stats_parse/minor_contamination_sites_mqc
          - general_stats_parse/qc_criteria
          - qc_aggregator/directory_1
      - id: output_directory_name
        default: all_qc_files
    out:
      - id: directory
    run: cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: stats_agg
    'sbg:x': 1303.04931640625
    'sbg:y': 643.8613891601562
  - id: multiqc_1_10_1
    in:
      - id: qc_files_dir
        source: stats_agg/directory
      - id: config
        source: config
    out:
      - id: multiqc_output_dir
      - id: multiqc_html
      - id: multiqc_zip
    run: cwl-commandlinetools/multiqc/1.10.1.7/multiqc.cwl
    'sbg:x': 1515.5164794921875
    'sbg:y': 800
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
