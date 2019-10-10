class: Workflow
cwlVersion: v1.0
id: test_qc_generation
label: test_qc_generation
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: bed_file
    type: File
    'sbg:x': 0
    'sbg:y': 488.203125
  - id: bam
    type: File
    'sbg:x': 0
    'sbg:y': 915.140625
  - id: gene_list
    type: File
    'sbg:x': 0
    'sbg:y': 274.734375
  - id: referece_fasta
    type: File
    'sbg:x': 0
    'sbg:y': 168
  - id: bam_1
    type: File
    'sbg:x': 0
    'sbg:y': 808.40625
  - id: bam_2
    type: File
    'sbg:x': 0
    'sbg:y': 701.671875
  - id: bam_3
    type: File
    'sbg:x': 0
    'sbg:y': 594.9375
  - id: bed_file_1
    type: File
    'sbg:x': 0
    'sbg:y': 381.46875
outputs:
  - id: read_counts
    outputSource:
      - test_waltz_7/read_counts
    type: File
    'sbg:x': 618.6788330078125
    'sbg:y': -165.26571655273438
  - id: pileup_without_duplicates
    outputSource:
      - test_waltz_7/pileup_without_duplicates
    type: File
    'sbg:x': 684.611572265625
    'sbg:y': 87.16242218017578
  - id: pileup
    outputSource:
      - test_waltz_7/pileup
    type: File
    'sbg:x': 724.1712036132812
    'sbg:y': -10.794766426086426
  - id: intervals_without_duplicates
    outputSource:
      - test_waltz_7/intervals_without_duplicates
    type: File
    'sbg:x': 775.0335693359375
    'sbg:y': 260.4712829589844
  - id: intervals
    outputSource:
      - test_waltz_7/intervals
    type: File
    'sbg:x': 763.7308349609375
    'sbg:y': 418.7098083496094
  - id: fragment_sizes
    outputSource:
      - test_waltz_7/fragment_sizes
    type: File
    'sbg:x': 797.6390991210938
    'sbg:y': 588.2510986328125
  - id: covered_regions
    outputSource:
      - test_waltz_7/covered_regions
    type: File
    'sbg:x': 756.1956787109375
    'sbg:y': 770.9789428710938
steps:
  - id: test_waltz
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file
      - id: bam
        source: bam
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 1041.140625
  - id: test_waltz_1
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file
      - id: bam
        source: bam_1
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 892.40625
  - id: test_waltz_2
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file
      - id: bam
        source: bam_2
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 743.671875
  - id: test_waltz_3
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file_1
      - id: bam
        source: bam
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 594.9375
  - id: test_waltz_4
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file_1
      - id: bam
        source: bam_2
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 446.203125
  - id: test_waltz_5
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file_1
      - id: bam
        source: bam_1
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 297.46875
  - id: test_waltz_6
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file_1
      - id: bam
        source: bam_3
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 148.734375
  - id: test_waltz_7
    in:
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file
      - id: bam
        source: bam_3
      - id: gene_list
        source: gene_list
    out:
      - id: pileup_without_duplicates
      - id: pileup
      - id: intervals_without_duplicates
      - id: intervals
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: ./test_waltz.cwl
    label: test_waltz
    'sbg:x': 163.328125
    'sbg:y': 0
requirements:
  - class: SubworkflowFeatureRequirement
