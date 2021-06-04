class: Workflow
cwlVersion: v1.0
id: access_qc
label: access_qc
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: duplex_extraction_files
    type:
      type: array
      items: File
      inputBinding:
        position: 0
        prefix: '--input'
    'sbg:x': -39.39886474609375
    'sbg:y': -501.99566650390625
  - id: collapsed_extraction_files
    type:
      type: array
      items: File
      inputBinding:
        position: 0
        prefix: '--input'
    'sbg:x': -192.39886474609375
    'sbg:y': -459.99566650390625
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': -458.9684143066406
    'sbg:y': -638.8032836914062
  - id: uncollapsed_bam
    type: 'File[]'
    'sbg:x': -689.236328125
    'sbg:y': -659.3702392578125
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': -722.554443359375
    'sbg:y': -483.1758117675781
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': -642.9684448242188
    'sbg:y': -324.84246826171875
  - id: reference
    type: File
    'sbg:x': -972.5465087890625
    'sbg:y': -182.2908477783203
  - id: pool_b_target_intervals
    type: File
    'sbg:x': -1045.5552978515625
    'sbg:y': -41.80412292480469
  - id: pool_b_bait_intervals
    type: File
    'sbg:x': -1019.0066528320312
    'sbg:y': 116.38172149658203
  - id: pool_a_target_intervals
    type: File
    'sbg:x': -989.139404296875
    'sbg:y': 282.3109130859375
  - id: pool_a_bait_intervals
    type: File
    'sbg:x': -872.9889526367188
    'sbg:y': 407.3017578125
  - id: noise_sites_bed
    type: File
    'sbg:x': -714.8031616210938
    'sbg:y': 498.0097351074219
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': -843.1217041015625
    'sbg:y': -361.4939880371094
  - id: biometrics_vcf_file
    type: File
    'sbg:x': -540.0243530273438
    'sbg:y': 559.9514770507812
  - id: config
    type: File?
    'sbg:x': 526.150146484375
    'sbg:y': -405.7807922363281
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': -835.9942016601562
    'sbg:y': -571.205078125
  - id: sample_group
    type: 'string[]'
    'sbg:x': -261.67791748046875
    'sbg:y': -712.6024169921875
  - id: sample_name
    type: 'string[]?'
    'sbg:x': -443.0584411621094
    'sbg:y': -781.15283203125
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': -615.9489135742188
    'sbg:y': -871.78125
  - id: sample_type
    type: 'string[]?'
    'sbg:x': -801.7835083007812
    'sbg:y': -743.8213500976562
outputs:
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type: Directory
    'sbg:x': -313.39886474609375
    'sbg:y': 236
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type: Directory
    'sbg:x': -160.39886474609375
    'sbg:y': 287
  - id: duplex_biometrics_outdir
    outputSource:
      - qc_aggregator/duplex_biometrics_outdir
    type: Directory
    'sbg:x': 567.9470825195312
    'sbg:y': -74.38859558105469
  - id: collapsed_biometrics_outdir
    outputSource:
      - qc_aggregator/collapsed_biometrics_outdir
    type: Directory
    'sbg:x': 530.0067138671875
    'sbg:y': 168.15882873535156
  - id: multiqc_zip
    outputSource:
      - multiqc_1_10_1/multiqc_zip
    type: File?
    'sbg:x': 1109.505615234375
    'sbg:y': -247.45068359375
  - id: multiqc_html
    outputSource:
      - multiqc_1_10_1/multiqc_html
    type: File
    'sbg:x': 1202.5987548828125
    'sbg:y': -64.26749420166016
  - id: diree
    outputSource:
      - multiqc_1_10_1/diree
    type: Directory
    'sbg:x': 1077.97412109375
    'sbg:y': 136.9337158203125
steps:
  - id: qc_generator
    in:
      - id: reference
        source: reference
      - id: duplex_bam
        source:
          - duplex_bam
      - id: collapsed_bam
        source:
          - collapsed_bam
      - id: group_reads_by_umi_bam
        source:
          - group_reads_by_umi_bam
      - id: uncollapsed_bam
        source:
          - uncollapsed_bam
      - id: uncollapsed_bam_base_recal
        source:
          - uncollapsed_bam_base_recal
      - id: pool_b_target_intervals
        source: pool_b_target_intervals
      - id: pool_b_bait_intervals
        source: pool_b_bait_intervals
      - id: pool_a_target_intervals
        source: pool_a_target_intervals
      - id: pool_a_bait_intervals
        source: pool_a_bait_intervals
      - id: biometrics_vcf_file
        source: biometrics_vcf_file
      - id: noise_sites_bed
        source: noise_sites_bed
      - id: sample_type
        source:
          - sample_type
      - id: sample_sex
        source:
          - sample_sex
      - id: sample_name
        source:
          - sample_name
      - id: sample_group
        source:
          - sample_group
      - id: simplex_bam
        source:
          - simplex_bam
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
    run: qc_generator/qc_generator.cwl
    label: qc_generator
    scatter:
      - duplex_bam
      - collapsed_bam
      - group_reads_by_umi_bam
      - uncollapsed_bam
      - uncollapsed_bam_base_recal
      - sample_type
      - sample_sex
      - sample_name
      - sample_group
      - simplex_bam
    scatterMethod: dotproduct
    'sbg:x': -289.4132385253906
    'sbg:y': -274.12384033203125
  - id: qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - duplex_extraction_files
      - id: simplex_bam_pool_a_dir
        source:
          - qc_generator/simplex_bam_pool_a_dir
      - id: simplex_bam_pool_b_dir
        source:
          - qc_generator/simplex_bam_pool_b_dir
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_pool_a_dir
        source:
          - qc_generator/duplex_bam_stats_pool_a_dir
      - id: duplex_bam_stats_pool_b_dir
        source:
          - qc_generator/duplex_bam_stats_pool_b_dir
      - id: collapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_a_dir
      - id: collapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/collapsed_bam_stats_pool_b_dir
      - id: collapsed_bam_duplex_metrics_pool_a_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_a_dir
      - id: collapsed_bam_duplex_metrics_pool_b_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_pool_b_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_recal_dir
      - id: gatk_mean_quality_by_cycle_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_dir
      - id: uncollapsed_bam_stats_pool_b_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_b_dir
      - id: uncollapsed_bam_stats_pool_a_dir
        source:
          - qc_generator/uncollapsed_bam_stats_pool_a_dir
      - id: collapsed_extraction_files
        source:
          - collapsed_extraction_files
    out:
      - id: outdir
      - id: duplex_biometrics_outdir
      - id: collapsed_biometrics_outdir
    run: qc_aggregator/qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 221
    'sbg:y': -74.16935729980469
  - id: multiqc_1_10_1
    in:
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
    'sbg:x': 945.7417602539062
    'sbg:y': -141.2582550048828
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
