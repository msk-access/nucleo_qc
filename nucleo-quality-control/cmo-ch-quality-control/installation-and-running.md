# Installation and running

Given the output files from [Nucleo](https://github.com/msk-access/nucleo), there are workflows to generate the quality control files, aggregate them files across many samples, and visualize them using MultQC. You can choose to run these workflows whether you have just one or hundreds of samples. Depending on your use case, there are two main options:

(1) Run `nucleo_qc_generator.cwl` followed by `nucleo_aggregate_visualize.cwl`. This approach first generates the QC files for one or more samples, and you use the second CWL script to aggregate the QC files and visualize them with MultiQC. This option can be useful for when you want to generate the QC files for some samples just once and then reuse those samples in multiple MultiQC reports.

(2) Run just `nucleo_qc.cwl`. This option just combines the two steps from the first option into one workflow. This workflow can
