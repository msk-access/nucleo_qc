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

OUTPUT_JSON_SINGLE_FILENAME = "pipeline_result_single.json"
OUTPUT_JSON_AGGREGATE_FILENAME = "pipeline_result_aggregate.json"


# def test_single_sample(platform):
#     """
#     Test Single Sample Workflow workflow with cwltool
#     """
    
#     logging.info("### SETUP ###")
#     with open(OUTPUT_JSON_SINGLE_FILENAME, "w") as json:
#         if platform == "singularity":
#             cmd = [
#                 "cwltool",
#                 "--singularity",
#                 "nucleo_qc.cwl",
#                 "tests/inputs/nucleo_qc_myeloid_2.yml",
#             ]
#         elif platform == "docker": 
#             cmd = [
#                 "cwltool",
#                 "nucleo_qc.cwl",
#                 "tests/inputs/nucleo_qc_myeloid_2.yml",
#             ]
#         else: 
#             assert platform in ['docker', 'singularity'] 
#         logging.info("setup_module: cmd being executed, %s", " ".join(cmd))
#         process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=json, close_fds=True)
#         ret_code = process.wait()
#         assert process.returncode == 0, process.stderr
        


# def test_single_sample_output():

#     """
#     Test Output of Single Sample Workflow
#     """
#     logging.info(
#     "### Check if json file exists and check some basic stats ###")
#     assert os.path.exists(OUTPUT_JSON_SINGLE_FILENAME)
#     assert (os.path.isfile('multiqc_1.10.1.7/multiqc_1.10.1.7.html') )
#     shutil.rmtree('multiqc_1.10.1.7')
#     shutil.rmtree('Myeloid200-2-05500HJ_P20')



def test_aggregate_visual(platform):
    """
    Test Aggregate Visualize workflow with cwltool
    """
    
    logging.info("### SETUP ###")
    if platform == "singularity":
        cmd = [
            "cwltool",
            "--singularity",
            "nucleo_aggregate_visualize.cwl",
            "tests/inputs/nucleo_agg_vis_2.yaml",
        ]
    elif platform == "docker": 
        cmd = [
            "cwltool",
            "nucleo_aggregate_visualize.cwl",
            "tests/inputs/nucleo_agg_vis_2.yaml",
        ]
    else: 
        assert platform in ['docker', 'singularity'] 

    logging.info("setup_module: cmd being executed, %s", " ".join(cmd))
    process = subprocess.run(cmd)
    #ret_code = process.wait()
    assert process.returncode == 0, process.stderr
        


def test_aggregate_visual_output():

    """
    Test Aggregate Visualize output
    """
    logging.info(
    "### Check if json file exists and check some basic stats ###")
    assert (os.path.isfile('multiqc_1.10.1.7/multiqc_1.10.1.7.html') )
    shutil.rmtree('multiqc_1.10.1.7')