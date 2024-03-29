class: Workflow
cwlVersion: v1.0
id: qc_generator
label: qc_generator
$namespaces:
  s: 'https://schema.org/'
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: reference
    type: File
    secondaryFiles:
      - ^.fasta.fai
      - ^.dict
    'sbg:x': 0
    'sbg:y': 1068.28125
  - id: duplex_bam
    type: File
    label: duplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2243.390625
  - id: collapsed_bam
    type: File
    label: collapsed_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 2563.875
  - id: group_reads_by_umi_bam
    type: File
    label: group_reads_by_umi_bam
    doc: Input BAM file generated by GroupReadByUmi.
    'sbg:x': 0
    'sbg:y': 2029.734375
  - id: uncollapsed_bam_base_recal
    type: File
    label: uncollapsed_bam_base_recal
    doc: An aligned SAM or BAM file.  Required.
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 106.828125
  - id: target_intervals
    type: File
    label: target_intervals
    'sbg:x': 0
    'sbg:y': 213.65625
  - id: bait_intervals
    type: File
    label: bait_intervals
    'sbg:x': 0
    'sbg:y': 2884.359375
  - id: noise_sites_bed
    type: File
    label: noise_sites_bed
    doc: >-
      Path to BED file containing regions over which to calculate noise
      [required]
    'sbg:x': 0
    'sbg:y': 1175.109375
  - id: sample_sex
    type: string?
    doc: Expected sample sex (i.e. M or F).
    'sbg:x': 0
    'sbg:y': 854.625
  - id: sample_name
    type: string?
    doc: >-
      Sample name. If not specified, sample name is automatically figured out
      from the BAM file.
    'sbg:x': 361.90625
    'sbg:y': 686.9375
  - id: sample_group
    type: string
    doc: The sample group (e.g. the sample patient ID).
    'sbg:x': 0
    'sbg:y': 961.453125
  - id: simplex_bam
    type: File
    label: simplex_bam
    secondaryFiles:
      - ^.bai
    'sbg:x': 0
    'sbg:y': 320.484375
  - id: biometrics_plot
    type: boolean?
    label: biometrics_plot
    doc: Also output plots of the data.
    'sbg:x': 0
    'sbg:y': 2670.703125
  - id: biometrics_json
    type: boolean?
    label: biometrics_json
    doc: Also output data in JSON format.
    'sbg:x': 0
    'sbg:y': 2777.53125
  - id: biometrics_bed_file
    type: File?
    'sbg:x': -423.2972106933594
    'sbg:y': 2095.491455078125
  - id: collapsed_biometrics_minor_threshold
    type: float?
    label: collapsed_biometrics_minor_threshold
    doc: Minor contamination threshold for bad sample.
    'sbg:x': 0
    'sbg:y': 2350.21875
  - id: collapsed_biometrics_coverage_threshold
    type: int?
    label: collapsed_biometrics_coverage_threshold
    doc: Samples with Y chromosome above this value will be considered male.
    'sbg:x': 0
    'sbg:y': 2457.046875
  - id: sequence_qc_min_basq
    type: int?
    'sbg:x': 0
    'sbg:y': 747.796875
  - id: sequence_qc_min_mapq
    type: int?
    'sbg:x': 0
    'sbg:y': 640.96875
  - id: sequence_qc_threshold
    type: float?
    'sbg:x': 0
    'sbg:y': 534.140625
  - id: sequence_qc_truncate
    type: int?
    'sbg:x': 0
    'sbg:y': 427.3125
  - id: hsmetrics_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1602.421875
  - id: hsmetrics_minimum_base_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1709.25
  - id: hsmetrics_coverage_cap
    type: int?
    'sbg:x': 0
    'sbg:y': 1816.078125
  - id: vcf_file
    type: File
    'sbg:x': 0
    'sbg:y': 0
  - id: hotspots_maf
    type: File
    'sbg:x': 0
    'sbg:y': 1922.90625
  - id: mosdepth_bed
    type: File?
    'sbg:x': -359.3104248046875
    'sbg:y': 1495
  - id: mosdepth_flag
    type: int?
    'sbg:x': 0
    'sbg:y': 1388.765625
  - id: mosdepth_minimum_mapping_quality
    type: int?
    'sbg:x': 0
    'sbg:y': 1281.9375
  - id: athena_transcript_file
    type: File?
    'sbg:x': 0
    'sbg:y': 3098.015625
  - id: athena_build
    type: File?
    'sbg:x': 386.90625
    'sbg:y': 2556.5625
  - id: athena_flagstat
    type: File?
    'sbg:x': 386.90625
    'sbg:y': 2342.90625
  - id: athena_thresholds
    type: 'int[]?'
    'sbg:x': 0
    'sbg:y': 3204.84375
  - id: athena_threshold
    type: int?
    'sbg:x': 0
    'sbg:y': 3311.671875
  - id: athena_limit
    type: int?
    'sbg:x': 386.90625
    'sbg:y': 2236.078125
  - id: athena_summary
    type: boolean?
    'sbg:x': 0
    'sbg:y': 3418.5
  - id: athena_vcf
    type: File?
    'sbg:x': 0
    'sbg:y': 2991.1875
  - id: athena_cores
    type: int?
    'sbg:x': 386.90625
    'sbg:y': 2449.734375
  - id: output
    type: 'string[]?'
    'sbg:exposed': true
  - id: omaf
    type: boolean?
  - id: generic_counting
    type: boolean?
  - id: fragment_count
    type: int
    'sbg:x': 300.2456970214844
    'sbg:y': 0
  - id: filter_duplicate
    type: int
    'sbg:x': 170.50595092773438
    'sbg:y': -103.53236389160156
outputs:
  - id: uncollapsed_bam_stats_dir
    outputSource:
      - uncollapsed_bam_stats/directory
    type: Directory
    label: uncollapsed_bam_stats_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1281.9375
  - id: gatk_mean_quality_by_cycle_recal_dir
    outputSource:
      - gatk_mean_quality_by_cycle_recal/directory
    type: Directory
    label: gatk_mean_quality_by_cycle_recal_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1495.59375
  - id: collapsed_bam_biometrics_dir
    outputSource:
      - collapsed_bam_biometrics/directory
    type: Directory
    label: collapsed_bam_biometrics_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 2136.5625
  - id: biometrics_extract_files_dir
    outputSource:
      - biometrics_extract_files/directory
    type: Directory
    label: biometrics_extract_files_dir
    'sbg:x': 1658.52490234375
    'sbg:y': 2355.774658203125
  - id: collapsed_bam_duplex_metrics_dir
    outputSource:
      - collapsed_bam_duplex_metrics/directory
    type: Directory
    label: collapsed_bam_duplex_metrics_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 2029.734375
  - id: collapsed_bam_stats_dir
    outputSource:
      - collapsed_bam_stats/directory
    type: Directory
    label: collapsed_bam_stats_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1922.90625
  - id: simplex_bam_stats_dir
    outputSource:
      - simplex_bam_stats/directory
    type: Directory
    label: simplex_bam_stats_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1388.765625
  - id: duplex_bam_sequence_qc_dir
    outputSource:
      - duplex_bam_sequence_qc/directory
    type: Directory
    label: duplex_bam_sequence_qc_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1709.25
  - id: duplex_bam_stats_dir
    outputSource:
      - duplex_bam_stats/directory
    type: Directory
    label: duplex_bam_stats_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1602.421875
  - id: duplex_bam_biometrics_dir
    outputSource:
      - duplex_bam_biometrics/directory
    type: Directory
    label: duplex_bam_biometrics_dir
    'sbg:x': 1625.7747802734375
    'sbg:y': 1816.078125
  - id: duplex_biometrics_extract_pickle
    outputSource:
      - qc_duplex_bam/duplex_biometrics_extract_pickle
    type: File
    'sbg:x': 1283.092529296875
    'sbg:y': 1216.3515625
  - id: collapsed_biometrics_extract_pickle
    outputSource:
      - qc_collapsed_bam/collapsed_biometrics_extract_pickle
    type: File
    'sbg:x': 1283.092529296875
    'sbg:y': 1792.4921875
  - id: athena_coverage_report_dir
    outputSource:
      - athena_coverage_report/directory
    type: Directory
    label: athena_coverage_report_dir
steps:
  - id: qc_collapsed_bam
    in:
      - id: reference
        source: reference
      - id: target_intervals
        source: target_intervals
      - id: collapsed_bam
        source:
          - collapsed_bam
      - id: group_reads_by_umi_bam
        source:
          - group_reads_by_umi_bam
      - id: bait_intervals
        source: bait_intervals
      - id: json
        source: biometrics_json
      - id: plot
        source: biometrics_plot
      - id: bed_file
        source: biometrics_bed_file
      - id: minor_threshold
        source: collapsed_biometrics_minor_threshold
      - id: coverage_threshold
        source: collapsed_biometrics_coverage_threshold
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
      - id: vcf_file
        source: vcf_file
      - id: sample_name
        source: sample_name
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: maf
        source: hotspots_maf
      - id: omaf
        default: true
        source: omaf
      - id: filter_duplicate
        default: 0
        source: filter_duplicate
      - id: fragment_count
        default: 1
        source: fragment_count
      - id: generic_counting
        source: generic_counting
    out:
      - id: fgbio_collect_duplex_seq_metrics_duplex_family_size
      - id: fgbio_collect_duplex_seq_metrics_duplex_qc
      - id: fgbio_collect_duplex_seq_metrics_duplex
      - id: fgbio_collect_duplex_seq_metrics_duplex_yield_metrics
      - id: fgbio_collect_duplex_seq_metrics_family_size
      - id: fgbio_collect_duplex_seq_metrics_umi_counts
      - id: biometrics_minor_csv
      - id: biometrics_minor_json
      - id: biometrics_minor_plot
      - id: biometrics_minor_sites_plot
      - id: biometrics_sexmismatch_json
      - id: biometrics_sexmismatch_csv
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: biometrics_major_plot
      - id: biometrics_major_json
      - id: biometrics_major_csv
      - id: collapsed_biometrics_extract_pickle
      - id: fillout_maf
    run: ../cwl_subworkflows/qc_collapsed_bam/qc_collapsed_bam_v2.0.cwl
    label: qc_collapsed_bam
    'sbg:x': 386.90625
    'sbg:y': 1975.25
  - id: qc_uncollapsed_bam
    in:
      - id: reference
        source: reference
      - id: uncollapsed_bam_base_recal
        source:
          - uncollapsed_bam_base_recal
      - id: bait_intervals
        source: bait_intervals
      - id: target_intervals
        source: target_intervals
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: gatk_mean_quality_by_cycle_output_base_recal
      - id: gatk_mean_quality_by_cycle_chart_output_base_recal
    run: ../cwl_subworkflows/qc_uncollapsed_bam/qc_uncollapsed_bam_v2.0.cwl
    label: qc_uncollapsed_bam
    'sbg:x': 386.90625
    'sbg:y': 1017.765625
  - id: qc_duplex_bam
    in:
      - id: reference
        source: reference
      - id: duplex_bam
        source:
          - duplex_bam
      - id: target_intervals
        source: target_intervals
      - id: bait_intervals
        source: bait_intervals
      - id: noise_sites_bed
        source: noise_sites_bed
      - id: sample_name
        source:
          - sample_name
      - id: plot
        source: biometrics_plot
      - id: json
        source: biometrics_json
      - id: sequence_qc_min_basq
        source: sequence_qc_min_basq
      - id: sequence_qc_min_mapq
        source: sequence_qc_min_mapq
      - id: sequence_qc_threshold
        source: sequence_qc_threshold
      - id: sequence_qc_truncate
        source: sequence_qc_truncate
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
      - id: vcf_file
        source: vcf_file
      - id: sample_sex
        source: sample_sex
      - id: sample_group
        source: sample_group
      - id: maf
        source: hotspots_maf
      - id: mosdepth_bed
        source: mosdepth_bed
      - id: mosdepth_flag
        source: mosdepth_flag
      - id: mosdepth_minimum_mapping_quality
        source: mosdepth_minimum_mapping_quality
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
      - id: sequence_qc_noise_positions
      - id: sequence_qc_noise_n
      - id: sequence_qc_noise_del
      - id: sequence_qc_noise_acgt
      - id: sequence_qc_figures
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
      - id: sequence_qc_pileup
      - id: sequence_qc_noise_by_substitution
      - id: duplex_biometrics_extract_pickle
      - id: biometrics_minor_sites_plot
      - id: biometrics_minor_plot
      - id: biometrics_minor_json
      - id: biometrics_minor_csv
      - id: fillout_maf
      - id: per_base_bed
      - id: per_region_bed
      - id: global_distribution
      - id: region_distribution
    run: ../cwl_subworkflows/qc_duplex_bam/qc_duplex_bam_v2.0.cwl
    label: qc_duplex_bam
    'sbg:x': 386.90625
    'sbg:y': 1539.421875
  - id: athena_report
    in:
      - id: transcript_file
        source: athena_transcript_file
      - id: output_name
        source: sample_name
      - id: build
        source: athena_build
      - id: flagstat
        source: athena_flagstat
      - id: thresholds
        source:
          - athena_thresholds
      - id: threshold
        source: athena_threshold
      - id: sample_name
        source: sample_name
      - id: output
        source: output
      - id: limit
        source: athena_limit
      - id: summary
        source: athena_summary
      - id: snps
        source:
          - athena_vcf
      - id: panel_bed
        source: mosdepth_bed
      - id: coverage_file
        source: qc_duplex_bam/per_base_bed
      - id: cores
        source: athena_cores
    out:
      - id: coverage_report_single
    run: ../cwl_subworkflows/athena_report/athena_report.cwl
    label: athena_report
    'sbg:x': 1382.922119140625
    'sbg:y': 2798.76611328125
  - id: simplex_bam_stats
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_simplex_bam/gatk_collect_insert_size_metrics_txt
          - qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf
          - qc_simplex_bam/gatk_collect_hs_metrics_txt
          - qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt
          - qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt
          - qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt
      - id: output_directory_name
        default: simplex_bam_stats
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: simplex_bam_stats
    'sbg:x': 1283.092529296875
    'sbg:y': 981.6953125
  - id: uncollapsed_bam_stats
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt
          - qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt
          - qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt
          - qc_uncollapsed_bam/gatk_collect_hs_metrics_txt
          - qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf
          - qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt
      - id: output_directory_name
        default: uncollapsed_bam_stats
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: uncollapsed_bam_stats
    'sbg:x': 1283.092529296875
    'sbg:y': 860.8671875
  - id: gatk_mean_quality_by_cycle_recal
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - >-
            qc_uncollapsed_bam/gatk_mean_quality_by_cycle_chart_output_base_recal
          - qc_uncollapsed_bam/gatk_mean_quality_by_cycle_output_base_recal
      - id: output_directory_name
        default: gatk_mean_quality_by_cycle_recal
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: gatk_mean_quality_by_cycle_recal
    'sbg:x': 1283.092529296875
    'sbg:y': 1102.5234375
  - id: collapsed_bam_stats
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/gatk_collect_insert_size_metrics_txt
          - qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf
          - qc_collapsed_bam/gatk_collect_hs_metrics_txt
          - qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt
          - qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt
          - qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt
          - qc_collapsed_bam/fillout_maf
      - id: output_directory_name
        default: collapsed_bam_stats
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_stats
    'sbg:x': 1283.092529296875
    'sbg:y': 1906.3203125
  - id: collapsed_bam_duplex_metrics
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size
          - >-
            qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex
          - qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size
      - id: output_directory_name
        default: collapsed_bam_duplex_metrics
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_duplex_metrics
    'sbg:x': 1283.092529296875
    'sbg:y': 2133.9765625
  - id: collapsed_bam_biometrics
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/biometrics_sexmismatch_json
          - qc_collapsed_bam/biometrics_sexmismatch_csv
          - qc_collapsed_bam/biometrics_minor_sites_plot
          - qc_collapsed_bam/biometrics_minor_plot
          - qc_collapsed_bam/biometrics_minor_json
          - qc_collapsed_bam/biometrics_minor_csv
          - qc_collapsed_bam/biometrics_major_plot
          - qc_collapsed_bam/biometrics_major_json
          - qc_collapsed_bam/biometrics_major_csv
          - qc_collapsed_bam/biometrics_minor_sites_plot
          - qc_collapsed_bam/biometrics_sexmismatch_csv
          - qc_collapsed_bam/biometrics_sexmismatch_json
      - id: output_directory_name
        default: collapsed_bam_biometrics
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: collapsed_bam_biometrics
    'sbg:x': 1283.092529296875
    'sbg:y': 2254.8046875
  - id: biometrics_extract_files
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_collapsed_bam/collapsed_biometrics_extract_pickle
          - qc_duplex_bam/duplex_biometrics_extract_pickle
      - id: output_directory_name
        default: biometrics_extract_files
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: biometrics_extract_files
    'sbg:x': 1290.449951171875
    'sbg:y': 2410.44970703125
  - id: duplex_bam_sequence_qc
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/sequence_qc_noise_positions
          - qc_duplex_bam/sequence_qc_noise_n
          - qc_duplex_bam/sequence_qc_noise_del
          - qc_duplex_bam/sequence_qc_noise_acgt
          - qc_duplex_bam/sequence_qc_figures
          - qc_duplex_bam/sequence_qc_pileup
          - qc_duplex_bam/sequence_qc_noise_by_substitution
      - id: output_directory_name
        default: duplex_bam_sequence_qc
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_sequence_qc
    'sbg:x': 1283.092529296875
    'sbg:y': 1451.0078125
  - id: duplex_bam_stats
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/gatk_collect_insert_size_metrics_txt
          - qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf
          - qc_duplex_bam/gatk_collect_hs_metrics_txt
          - qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt
          - qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt
          - qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt
          - qc_duplex_bam/per_base_bed
          - qc_duplex_bam/per_region_bed
          - qc_duplex_bam/global_distribution
          - qc_duplex_bam/region_distribution
          - qc_duplex_bam/fillout_maf
      - id: output_directory_name
        default: duplex_bam_stats
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_stats
    'sbg:x': 1283.092529296875
    'sbg:y': 1330.1796875
  - id: athena_coverage_report
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - athena_report/coverage_report_single
      - id: output_directory_name
        default: athena_coverage_report
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: athena_coverage_report
  - id: duplex_bam_biometrics
    in:
      - id: files
        linkMerge: merge_flattened
        source:
          - qc_duplex_bam/biometrics_minor_csv
          - qc_duplex_bam/biometrics_minor_json
          - qc_duplex_bam/biometrics_minor_plot
          - qc_duplex_bam/biometrics_minor_sites_plot
      - id: output_directory_name
        default: duplex_bam_biometrics
        source: sample_name
    out:
      - id: directory
    run: ../cwl-commandlinetools/expression_tools/put_in_dir.cwl
    label: duplex_bam_biometrics
    'sbg:x': 1283.092529296875
    'sbg:y': 1678.6640625
  - id: qc_simplex_bam
    in:
      - id: reference
        source: reference
      - id: simplex_bam
        source: simplex_bam
      - id: bait_intervals
        source: bait_intervals
      - id: target_intervals
        source: target_intervals
      - id: hsmetrics_minimum_mapping_quality
        source: hsmetrics_minimum_mapping_quality
      - id: hsmetrics_minimum_base_quality
        source: hsmetrics_minimum_base_quality
      - id: hsmetrics_coverage_cap
        source: hsmetrics_coverage_cap
    out:
      - id: gatk_collect_alignment_summary_metrics_txt
      - id: gatk_collect_hs_metrics_per_base_coverage_txt
      - id: gatk_collect_hs_metrics_per_target_coverage_txt
      - id: gatk_collect_hs_metrics_txt
      - id: gatk_collect_insert_size_metrics_histogram_pdf
      - id: gatk_collect_insert_size_metrics_txt
    run: ../cwl_subworkflows/qc_simplex_bam/qc_simplex_bam_v2.0.cwl
    label: qc_simplex_bam
    'sbg:x': 386.90625
    'sbg:y': 1215.59375
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
's:codeRepository': 'https://github.com/msk-access/cwl_subworkflows'
's:contributor':
  - class: 's:Person'
    's:email': 'mailto:charalk@mskcc.org'
    's:name': Carmelina Charalambous
's:dateCreated': '2022-04-01'
's:license': 'https://spdx.org/licenses/Apache-2.0'
