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
outputs: []
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
