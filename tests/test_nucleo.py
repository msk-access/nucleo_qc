#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Tests for `nucleo` package."""

import os
import subprocess
import shutil
import difflib
import json
import logging
import pytest
import coloredlogs

# Create Logger if verbose
loggeroutput = "nucleo_test.log"
logging.basicConfig(
    filename=loggeroutput,
    filemode="w",
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
    datefmt="%m/%d/%Y %I:%M:%S %p",
    level=logging.DEBUG,
)
logger = logging.getLogger(__name__)
coloredlogs.install(level="DEBUG")

RESULT_FILE_NAME = [
    "test_collapsed_FM.bai",
    "test_collapsed_FM.bam",
    "test_collapsed_aln_metrics.txt",
    "test_collapsed_duplex.bai",
    "test_collapsed_duplex.bam",
    "test_collapsed_duplex_aln_metrics.txt",
    "test_collapsed_grouped.bam",
    "test_collapsed_simplex.bai",
    "test_collapsed_simplex.bam",
    "test_collapsed_simplex_aln_metrics.txt",
    "test_fastp_report.html",
    "test_fastp_report.json",
    "test_umi_family_size.hist",
    "test_uncollapsed_BR.bai",
    "test_uncollapsed_BR.bam",
    "test_uncollapsed_BR_alignment_summary_metrics.txt",
    "test_uncollapsed_FM.bai",
    "test_uncollapsed_FM.bam",
    "test_uncollapsed_MD_metrics.txt",
    "pipeline_result.json"
]

OUTPUT_JSON_FILENAME = "pipeline_result.json"
EXPECTED_OUTPUT_JSON_FILENAME = "expected_output.json"

def test_setup_module(platform):
    """
    Setup and Test the workflow with cwltool
    """
    
    logging.info("### SETUP ###")
    with open(OUTPUT_JSON_FILENAME, "w") as json:
        if platform == "singularity":
            cmd = [
                "cwltool",
                "--singularity",
                "nucleo_qc.cwl",
                "nucleo_qc_myeloid_2.yml",
            ]
        elif platform == "docker": 
            cmd = [
                "cwltool",
                "nucleo_qc.cwl",
                "nucleo_qc_myeloid_2.yml",
            ]
        else: 
            assert platform in ['docker', 'singularity'] 
        logging.info("setup_module: cmd being executed, %s", " ".join(cmd))
        process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=json, close_fds=True)
        ret_code = process.wait()
        assert process.returncode == 0, process.stderr
        return(ret_code)


def test_output_json():

#     """
#     General tests for output json
#     """
    logging.info(
        "### Check if json file exists and check some basic stats ###")
    assert os.path.exists(OUTPUT_JSON_FILENAME)
    output_json = json.loads(open(OUTPUT_JSON_FILENAME, 'r').read())
    assert (output_json["multiqc_html"]["basename"] == "multiqc_1.10.1.7.html")

