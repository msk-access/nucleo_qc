---
description: >-
  Guide to MultiQC sections displaying sample meta information and pass/fail/warn metrics.
---

At the top of the MultiQC report are one or two tables showing some per-sample information. One table is for plasma samples and another is for buffy-coat samples; so only one table may show up depending on your sample composition.

![](../.gitbook/assets/meta.png)

| Column name | Source | Description |
|-|-|-|
| cmoSampleName | LIMs | The sample name |
| Library input | LIMs | The library input. |
| Library yield | LIMs | The library yield. |
| Pool input | LIMs | The pool input. |
| Raw cov. (pool A) | MEAN_TARGET_COVERAGE column from GATK-CollectHsMetrics (Uncollapsed BAM). | The mean sequencing coverage over target regions in Pool A. |
| Raw cov. (pool B) | MEAN_TARGET_COVERAGE column from GATK-CollectHsMetrics (Uncollapsed BAM). | The mean sequencing coverage over target regions in Pool B. |
