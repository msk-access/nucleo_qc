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
    'sbg:y': 748.5625
  - id: collapsed_extraction_files
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1176.3125
  - id: uncollapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 106.9375
  - id: simplex_bam_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 213.875
  - id: simplex_bam_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 320.8125
  - id: gatk_mean_quality_by_cycle_recal_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 534.6875
  - id: gatk_mean_quality_by_cycle_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 641.625
  - id: duplex_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 855.5
  - id: duplex_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 962.4375
  - id: collapsed_bam_stats_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1283.25
  - id: collapsed_bam_stats_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1390.1875
  - id: collapsed_bam_duplex_metrics_pool_b_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1497.125
  - id: collapsed_bam_duplex_metrics_pool_a_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1604.0625
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 427.75
  - id: config
    type: File?
    'sbg:x': 1524.3681640625
    'sbg:y': 855.5
  - id: duplex_bam_sequence_qc_dir
    type:
      type: array
      items:
        - File
        - Directory
        - 'null'
    'sbg:x': 0
    'sbg:y': 1069.375
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
    'sbg:x': 1926.6815185546875
    'sbg:y': 695.09375
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1926.6815185546875
    'sbg:y': 802.03125
  - id: diree
    outputSource:
      - multiqc_1_10_1/diree
    type: Directory
    'sbg:x': 1926.6815185546875
    'sbg:y': 908.96875
  - id: outdir
    outputSource:
      - post_agg_agg_agg/directory
    type: Directory
    'sbg:x': 1684.0244140625
    'sbg:y': 734.5625
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
      - id: duplex_biometrics_outdir
      - id: collapsed_biometrics_outdir
      - id: directory
    run: qc_aggregator/qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 397.171875
    'sbg:y': 704.03125
  - id: post_agg_agg
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_aggregator/duplex_biometrics_outdir
          - qc_aggregator/collapsed_biometrics_outdir
          - qc_aggregator/directory
      - id: output_directory_name
        default: all_qc_files
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: post_agg_agg
    'sbg:x': 995.616455078125
    'sbg:y': 802.03125
  - id: general_stats_parse
    in:
      - id: directory
        source: post_agg_agg/directory
      - id: samples-json
        source: samples-json
    out:
      - id: sample_meta_tumor
      - id: sample_meta_normal
      - id: sequence_qc_mqc
      - id: sequence_qc_substitution_mqc
      - id: sequence_qc_mqc_yaml
      - id: minor_contamination_sites_mqc
    run: cwl-commandlinetools/access_utils/general_stats_parse.cwl
    label: general_stats_parse
    'sbg:x': 1158.7852783203125
    'sbg:y': 645.263427734375
  - id: post_agg_agg_agg
    in:
      - id: files
        source:
          - general_stats_parse/sample_meta_tumor
          - general_stats_parse/sample_meta_normal
          - general_stats_parse/sequence_qc_mqc
          - general_stats_parse/sequence_qc_mqc_yaml
          - general_stats_parse/sequence_qc_substitution_mqc
          - general_stats_parse/minor_contamination_sites_mqc
          - post_agg_agg/directory
      - id: output_directory_name
        default: all_qc_files
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: post_agg_agg_agg
    'sbg:x': 1524.3681640625
    'sbg:y': 748.5625
  - id: multiqc_1_10_1
    in:
      - id: qc_files_dir
        source: post_agg_agg_agg/directory
      - id: config
        source: config
    out:
      - id: diree
      - id: multiqc_html
      - id: multiqc_zip
    run: cwl-commandlinetools/multiqc_1.10.1/multiqc_1.10.1.cwl
    'sbg:x': 1684.0244140625
    'sbg:y': 855.5
requirements:
  - class: SubworkflowFeatureRequirement
  - class: MultipleInputFeatureRequirement
