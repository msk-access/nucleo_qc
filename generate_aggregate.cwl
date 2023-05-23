class: Workflow
cwlVersion: v1.0
id: generate_aggregate
label: generate_aggregate
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 640.21875
  - id: target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 106.7109375
  - id: bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 1920.609375
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 853.59375
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 1813.921875
  - id: biometrics_bed_file
    type: File
    'sbg:x': 0
    'sbg:y': 1813.921875
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1707.234375
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1600.546875
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1173.6796875
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.421875
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 320.109375
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 533.5078125
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 426.796875
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1066.96875
  - id: mosdepth_bed
    type: File?
    'sbg:x': 0
    'sbg:y': 960.28125
  - id: athena_transcript_file
    type: File?
    'sbg:x': 0
    'sbg:y': 2133.984375
  - id: athena_build
    type: File?
    'sbg:x': 0
    'sbg:y': 2880.890625
  - id: athena_flagstat
    type: File?
    'sbg:x': 0
    'sbg:y': 2667.4921875
  - id: athena_thresholds
    type: 'int[]?'
    'sbg:x': 0
    'sbg:y': 2240.671875
  - id: athena_threshold
    type: int?
    'sbg:x': 0
    'sbg:y': 2347.359375
  - id: athena_limit
    type: int?
    'sbg:x': 0
    'sbg:y': 2560.78125
  - id: athena_summary
    type: boolean?
    'sbg:x': 0
    'sbg:y': 2454.0703125
  - id: athena_vcf
    type: File?
    'sbg:x': 0
    'sbg:y': 2027.296875
  - id: athena_cores
    type: int?
    'sbg:x': 0
    'sbg:y': 2774.203125
  - id: output
    type: 'string[]?'
    'sbg:exposed': true
  - id: omaf
    type: boolean?
    'sbg:x': 0
    'sbg:y': 746.90625
  - id: generic_counting
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1280.4140625
  - id: fragment_count
    type: int
    'sbg:x': 0
    'sbg:y': 1387.1484375
  - id: filter_duplicate
    type: int
    'sbg:x': 0
    'sbg:y': 1493.859375
outputs:
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 803.9111938476562
    'sbg:y': 1306.364990234375
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 1076
    'sbg:y': 1603.4080810546875
  - id: aggregate_qc_stats
    outputSource:
      - qc_aggregator/aggregate_qc_stats
    type: Directory
    'sbg:x': 1585.9033203125
    'sbg:y': 1440.421875
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
      - id: biometrics_bed_file
        source: biometrics_bed_file
      - id: hotspots_maf
        source: hotspots_maf
      - id: mosdepth_bed
        source: mosdepth_bed
      - id: athena_transcript_file
        source: athena_transcript_file
      - id: athena_build
        source: athena_build
      - id: athena_flagstat
        source: athena_flagstat
      - id: athena_thresholds
        source:
          - athena_thresholds
      - id: athena_threshold
        source: athena_threshold
      - id: athena_limit
        source: athena_limit
      - id: athena_summary
        source: athena_summary
      - id: athena_vcf
        source: athena_vcf
      - id: athena_cores
        source: athena_cores
      - id: output
        source: output
      - id: omaf
        source: omaf
      - id: generic_counting
        source: generic_counting
      - id: fragment_count
        default: 1
        source: fragment_count
      - id: filter_duplicate
        default: 0
        source: filter_duplicate
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
      - id: athena_coverage_report_dir
      - id: duplex_biometrics_extract_pickle
      - id: collapsed_biometrics_extract_pickle
      - id: biometrics_extract_files_dir
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
    'sbg:y': 1251.421875
  - id: qc_aggregator
    in:
      - id: duplex_extraction_files
        source:
          - qc_generator/duplex_biometrics_extract_pickle
      - id: simplex_bam_stats_dir
        source:
          - qc_generator/simplex_bam_stats_dir
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
      - id: duplex_bam_stats_dir
        source:
          - qc_generator/duplex_bam_stats_dir
      - id: collapsed_bam_stats_dir
        source:
          - qc_generator/collapsed_bam_stats_dir
      - id: biometrics_extract_files_dir
        source: 
          - qc_generator/biometrics_extract_files_dir
      - id: collapsed_bam_duplex_metrics_dir
        source:
          - qc_generator/collapsed_bam_duplex_metrics_dir
      - id: gatk_mean_quality_by_cycle_recal_dir
        source:
          - qc_generator/gatk_mean_quality_by_cycle_recal_dir
      - id: uncollapsed_bam_stats_dir
        source:
          - qc_generator/uncollapsed_bam_stats_dir
      - id: athena_coverage_report_dir
        source:
          - qc_generator/athena_coverage_report_dir
      - id: collapsed_extraction_files
        source:
          - qc_generator/collapsed_biometrics_extract_pickle
    out:
      - id: aggregate_qc_stats
    run: qc_aggregator/nucleo_qc_aggregator.cwl
    label: qc_aggregator
    'sbg:x': 1076.5557861328125
    'sbg:y': 1270.734375
requirements:
  - class: SubworkflowFeatureRequirement
  - class: ScatterFeatureRequirement
  - class: StepInputExpressionRequirement
  - class: InlineJavascriptRequirement
  - class: MultipleInputFeatureRequirement
$schemas:
  - 'http://schema.org/version/latest/schemaorg-current-http.rdf'
's:author':
  - class: 's:Person'
    's:email': 'mailto:charalk@mskcc.org'
    's:identifier': ''
    's:name': Carmelina Charalambous
's:citation': ''
's:codeRepository': 'https://github.com/msk-access/nucleo'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:shahr2@mskcc.org'
    's:identifier': 'https://orcid.org/0000-0001-9042-6213'
    's:name': Ronak Shah
's:dateCreated': '2020-11-23'
's:license': 'https://spdx.org/licenses/Apache-2.0'
