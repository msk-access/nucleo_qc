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
    'sbg:y': 639.984375
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 959.765625
  - id: uncollapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 320.9987487792969
    'sbg:y': 163.49005126953125
  - id: simplex_bam_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 106.59375
  - id: simplex_bam_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 213.1875
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 426.5859375
  - id: gatk_mean_quality_by_cycle_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 533.3203125
  - id: duplex_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 746.578125
  - id: duplex_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 853.171875
  - id: collapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1066.359375
  - id: collapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1172.953125
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1279.546875
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1386.140625
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 319.8515625
  - id: config
    type: File?
    'sbg:x': 974.7890625
    'sbg:y': 806.734375
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 505.5699462890625
    'sbg:y': -110.21267700195312
  - id: uncollapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 536.9334106445312
    'sbg:y': 263.3175964355469
outputs:
  - id: duplex_biometrics_outdir
    outputSource:
      - qc_aggregator/duplex_biometrics_outdir
    type: Directory
    'sbg:x': 974.7890625
    'sbg:y': 700.0703125
  - id: collapsed_biometrics_outdir
    outputSource:
      - qc_aggregator/collapsed_biometrics_outdir
    type: Directory
    'sbg:x': 974.7890625
    'sbg:y': 913.3984375
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1517.498291015625
    'sbg:y': 586.4765625
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1517.498291015625
    'sbg:y': 693.0703125
  - id: diree
    outputSource:
      - multiqc_1_10_1/diree
    type: Directory
    'sbg:x': 1517.498291015625
    'sbg:y': 799.6640625
  - id: outdir
    outputSource:
      - post_agg_agg/directory
    type: Directory
    'sbg:x': 913.861572265625
    'sbg:y': 134.7600555419922
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
      - id: gatk_mean_quality_by_cycle_dir
        source:
          - gatk_mean_quality_by_cycle_dir
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
      - id: outdir
      - id: duplex_biometrics_outdir
      - id: collapsed_biometrics_outdir
    run: qc_aggregator/qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 522.8099975585938
    'sbg:y': 619.638671875
  - id: post_agg_agg
    in:
      - id: files
        source:
          - qc_aggregator/outdir
      - id: output_directory_name
        default: all_qc_files
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: post_agg_agg
    'sbg:x': 721.748779296875
    'sbg:y': 406.7313537597656
  - id: general_stats_parse
    in:
      - id: directory
        source: post_agg_agg/directory
      - id: samples-json
        source: samples-json
    out:
      - id: sample_meta_tumor
      - id: sample_meta_normal
    run: cwl-commandlinetools/access_utils/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 1083.657958984375
    'sbg:y': 364.6903076171875
  - id: multiqc_1_10_1
    in:
      - id: qc_files_array
        linkMerge: merge_flattened
        source:
          - general_stats_parse/sample_meta_tumor
          - general_stats_parse/sample_meta_normal
      - id: qc_list_of_dirs
        source:
          - qc_aggregator/outdir
      - id: config
        source: config
    out:
      - id: diree
      - id: multiqc_html
      - id: multiqc_zip
    run: cwl-commandlinetools/multiqc_1.10.1/multiqc_1.10.1.cwl
    'sbg:x': 1257.013916015625
    'sbg:y': 679.0703125
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
