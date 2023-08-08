class: Workflow
cwlVersion: v1.0
id: nucleo_qc
doc: >-
  This workflow generated all different quality control metrics and report for one or multiple samples
label: nucleo_qc
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    'sbg:x': 0
    'sbg:y': 747.90625
  - id: target_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 106.84375
  - id: bait_intervals
    type: File
    'sbg:x': 0
    'sbg:y': 2136.875
  - id: noise_sites_bed
    type: File
    'sbg:x': 0
    'sbg:y': 961.59375
  - id: biometrics_vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 2030.03125
  - id: biometrics_bed_file
    type: File
    'sbg:x': 0
    'sbg:y': 2030.03125
  - id: collapsed_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1923.1875
  - id: duplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1816.34375
  - id: group_reads_by_umi_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 1388.96875
  - id: simplex_bam
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 213.6875
  - id: sample_sex
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 427.375
  - id: sample_group
    type: 'string[]'
    'sbg:x': 0
    'sbg:y': 641.0625
  - id: uncollapsed_bam_base_recal
    type: 'File[]'
    'sbg:x': 0
    'sbg:y': 0
  - id: sample_name
    type: 'string[]?'
    'sbg:x': 0
    'sbg:y': 534.21875
  - id: samples-json
    type: File
    'sbg:x': 0
    'sbg:y': 320.53125
  - id: multiqc_config
    type: File?
    'sbg:x': 0
    'sbg:y': 1068.4375
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1282.125
  - id: mosdepth_bed
    type: File?
    'sbg:x': 0
    'sbg:y': 1175.28125
  - id: athena_transcript_file
    type: File?
    'sbg:x': 0
    'sbg:y': 2350.5625
  - id: athena_build
    type: File?
    'sbg:x': 0
    'sbg:y': 3098.46875
  - id: athena_flagstat
    type: File?
    'sbg:x': 0
    'sbg:y': 2884.78125
  - id: athena_thresholds
    type: 'int[]?'
    'sbg:x': 0
    'sbg:y': 2457.40625
  - id: athena_threshold
    type: int?
    'sbg:x': 0
    'sbg:y': 2564.25
  - id: athena_limit
    type: int?
    'sbg:x': 0
    'sbg:y': 2777.9375
  - id: athena_summary
    type: boolean?
    'sbg:x': 0
    'sbg:y': 2671.09375
  - id: athena_vcf
    type: File?
    'sbg:x': 0
    'sbg:y': 2243.71875
  - id: athena_cores
    type: int?
    'sbg:x': 0
    'sbg:y': 2991.625
  - id: output
    type: 'string[]?'
    'sbg:exposed': true
  - id: omaf
    type: boolean?
    'sbg:x': 0
    'sbg:y': 854.75
  - id: generic_counting
    type: boolean?
    'sbg:x': 0
    'sbg:y': 1495.8125
  - id: fragment_count
    type: int
    'sbg:x': 0
    'sbg:y': 1602.65625
  - id: filter_duplicate
    type: int
    'sbg:x': 0
    'sbg:y': 1709.5
outputs:
  - id: multiqc_zip
    outputSource:
      - aggregate_visualize/multiqc_zip
    type: File?
    'sbg:x': 1599.148681640625
    'sbg:y': 1442.390625
  - id: multiqc_html
    outputSource:
      - aggregate_visualize/multiqc_html
    type: File
    'sbg:x': 1599.148681640625
    'sbg:y': 1656.078125
  - id: duplex_bam_biometrics_dir
    outputSource:
      - qc_generator/duplex_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 1076.5401611328125
    'sbg:y': 1372.390625
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - qc_generator/collapsed_bam_biometrics_dir
    type:
      - Directory
      - type: array
        items: Directory
    'sbg:x': 1076.5401611328125
    'sbg:y': 1479.234375
  - id: multiqc_output_dir
    outputSource:
      - aggregate_visualize/multiqc_output_dir
    type: Directory
    'sbg:x': 1599.148681640625
    'sbg:y': 1549.234375
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
        source: athena_thresholds
      - id: panel_bed
        source: mosdepth_bed
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
        default: true
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
      - id: duplex_biometrics_extract_pickle
      - id: collapsed_biometrics_extract_pickle
      - id: athena_coverage_report_dir
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
    'sbg:x': 288.796875
    'sbg:y': 1360.234375
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
      - id: biometrics_extract_files_dir
        source:
          - qc_generator/biometrics_extract_files_dir
      - id: samples-json
        source: samples-json
      - id: config
        source: multiqc_config
      - id: duplex_bam_sequence_qc_dir
        source:
          - qc_generator/duplex_bam_sequence_qc_dir
      - id: athena_coverage_report_dir
        source:
          - qc_generator/athena_coverage_report_dir
    out:
      - id: multiqc_zip
      - id: multiqc_html
      - id: multiqc_output_dir
    run: ./nucleo_aggregate_visualize.cwl
    label: aggregate_visualize
    'sbg:x': 1076.5401611328125
    'sbg:y': 1656.078125
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