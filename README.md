---
description: Workflows that generate, aggregate, and visualize quality control files for MSK-ACCESS.
---

# MSK-ACCESS QC generation

![test_nucleo](https://github.com/msk-access/nucleo/workflows/test_nucleo/badge.svg) [![Updates](https://pyup.io/repos/github/msk-access/nucleo/shield.svg)](https://pyup.io/repos/github/msk-access/nucleo/) [![Python 3](https://pyup.io/repos/github/msk-access/access_qc_generation/python-3-shield.svg)](https://pyup.io/repos/github/msk-access/access_qc_generation/)

- Free software: Apache Software License 2.0
- Documentation: [https://msk-access.gitbook.io/access-quality-control-v2/](https://msk-access.gitbook.io/access-quality-control-v2/)

## Features

Given the output files from [Nucleo](https://github.com/msk-access/nucleo), the first step is to generate all the QC files for each sample. This runs tools like CollectHSMetrics (GATK), CollectDuplexSeqMetrics (fgbio), and more. You can then visualize the QC data for one or hundreds of samples via MultiQC.

## Installation

Clone the repository:

```
git clone --depth 50 https://github.com/msk-access/access_qc_generation
```

## Credits

- CMO cfDNA Informatics Team
- Cookiecutter: [https://github.com/audreyr/cookiecutter](https://github.com/audreyr/cookiecutter)
- `audreyr/cookiecutter-pypackage`: [https://github.com/audreyr/cookiecutter-pypackage](https://github.com/audreyr/cookiecutter-pypackage)
