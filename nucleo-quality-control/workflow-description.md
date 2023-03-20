---
description: Nucleo QC tools, subworkflows and main workflows organization
---

# Workflow description

The workflows for nucleo quality control are written in the common workflow  language (CWL). Below, figure 1 illustrates the organization level, all tools used in the bigger workflows are listed first, this tools are then called in the subworkflows listed second, then the subworfklows are called to make bigger main workflows.

For instance, in the qc\_collapsed subworkflows we are using multiple command line tools such as all the biometrics tools. The main workflow to generate all the QC outputs is nucleo\_qc seen at the bottom in the high-level CWL workflow section. This workflow calls both the nucleo\_qc\_generator.cwl that generates the QC results for each BAM file (c_ollapsed, uncollapsed, duplex and simplex)_ by calling all the subworkflows and nucleo\_aggregate\_visualize.cwl that aggregates the QC results into different folders and calls MultiQC to generate the html QC report.&#x20;

<figure><img src="../.gitbook/assets/Blank diagram-3.png" alt=""><figcaption><p>Figure 1. Nucleo QC outline </p></figcaption></figure>

{% hint style="info" %}
For individuals/groups that do not require a multiqc report and would like to generate their own QC reports, you may use generate\_aggregate.cwl instead of nucleo\_qc.cql as this will generate all QC results apart from the MultiQC html report.
{% endhint %}



