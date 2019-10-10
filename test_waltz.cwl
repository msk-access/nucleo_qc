class: Workflow
cwlVersion: v1.0
id: test_waltz
label: test_waltz
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: referece_fasta
    type: File
    'sbg:x': -424.39886474609375
    'sbg:y': -231
  - id: bed_file
    type: File
    'sbg:x': -459.39886474609375
    'sbg:y': -89
  - id: bam
    type: File
    'sbg:x': -595.3941650390625
    'sbg:y': 40
  - id: gene_list
    type: File
    'sbg:x': -211.39418029785156
    'sbg:y': -194
outputs:
  - id: pileup_without_duplicates
    outputSource:
      - waltz_pileupmetrics/pileup_without_duplicates
    type: File
    'sbg:x': -279.234375
    'sbg:y': -264
  - id: pileup
    outputSource:
      - waltz_pileupmetrics/pileup
    type: File
    'sbg:x': -165.234375
    'sbg:y': 167
  - id: intervals_without_duplicates
    outputSource:
      - waltz_pileupmetrics/intervals_without_duplicates
    type: File
    'sbg:x': -331.234375
    'sbg:y': 264.9909973144531
  - id: intervals
    outputSource:
      - waltz_pileupmetrics/intervals
    type: File
    'sbg:x': -596.234375
    'sbg:y': 363.9909973144531
  - id: covered_regions
    outputSource:
      - waltz_count_reads/covered_regions
    type: File
    'sbg:x': 167.765625
    'sbg:y': 205.99099731445312
  - id: fragment_sizes
    outputSource:
      - waltz_count_reads/fragment_sizes
    type: File
    'sbg:x': 180.765625
    'sbg:y': -52.00899887084961
  - id: read_counts
    outputSource:
      - waltz_count_reads/read_counts
    type: File
    'sbg:x': 98.765625
    'sbg:y': -339.0018005371094
steps:
  - id: waltz_pileupmetrics
    in:
      - id: bam
        source: bam
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bed_file
    out:
      - id: pileup
      - id: pileup_without_duplicates
      - id: intervals
      - id: intervals_without_duplicates
    run: >-
      command_line_tools/waltz_pileupmatrices_3.1.1/waltz_pileupmatrices_3.1.1.cwl
    label: waltz_pileupmetrics
    'sbg:x': -319
    'sbg:y': -36
  - id: waltz_count_reads
    in:
      - id: bam
        source: bam
      - id: gene_list
        source: gene_list
      - id: bed_file
        source: bed_file
    out:
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: command_line_tools/waltz_count_reads_3.1.1/waltz_count_reads_3.1.1.cwl
    label: waltz_count_reads
    'sbg:x': -54
    'sbg:y': -31
requirements: []
