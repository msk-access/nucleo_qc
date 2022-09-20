# Installation and running



The athena tool is made of 3 parts; 1) annotate the bed file 2) generate statistic files 3) generate the coverage report. This can be run independently or together with a single workflow:

Run independently:

1. Annotate each region of the bed file with the gene, exon and per base coverage data using [https://github.com/msk-access/cwl-commandlinetools/blob/develop/athena/1.4.2/annotate\_bed/annotate\_bed.cwl](https://github.com/msk-access/cwl-commandlinetools/blob/develop/athena/1.4.2/annotate\_bed/annotate\_bed.cwl)
2. Generate per exon and per gene statistics using [https://github.com/msk-access/cwl-commandlinetools/blob/develop/athena/1.4.2/coverage\_stats\_single/coverage\_stats\_single.cwl](https://github.com/msk-access/cwl-commandlinetools/blob/develop/athena/1.4.2/coverage\_stats\_single/coverage\_stats\_single.cwl)
3. Generate HTML coverage report with [https://github.com/msk-access/cwl-commandlinetools/tree/develop/athena/1.4.2/coverage\_report\_single](https://github.com/msk-access/cwl-commandlinetools/tree/develop/athena/1.4.2/coverage\_report\_single)

Run three steps with a single workflow:

* Run all 3 steps above using a single workflow using [https://github.com/msk-access/cwl\_subworkflows/blob/develop/athena\_report/athena\_report.cwl](https://github.com/msk-access/cwl\_subworkflows/blob/develop/athena\_report/athena\_report.cwl)
