{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "access_qc",
            "inputs": [
                {
                    "id": "#reference",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 641.25
                },
                {
                    "id": "#pool_b_target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 748.125
                },
                {
                    "id": "#pool_b_bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 855
                },
                {
                    "id": "#pool_a_target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 961.875
                },
                {
                    "id": "#pool_a_bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1068.75
                },
                {
                    "id": "#noise_sites_bed",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1175.625
                },
                {
                    "id": "#biometrics_vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1816.875
                },
                {
                    "id": "#collapsed_bam",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1710
                },
                {
                    "id": "#duplex_bam",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1603.125
                },
                {
                    "id": "#group_reads_by_umi_bam",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1496.25
                },
                {
                    "id": "#simplex_bam",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.875
                },
                {
                    "id": "#sample_sex",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.625
                },
                {
                    "id": "#sample_group",
                    "type": {
                        "type": "array",
                        "items": "string"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 534.375
                },
                {
                    "id": "#uncollapsed_bam_base_recal",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#sample_name",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 427.5
                },
                {
                    "id": "#samples-json",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.75
                },
                {
                    "id": "#multiqc_config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1282.5
                },
                {
                    "id": "#hotspots_maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1389.375
                }
            ],
            "outputs": [
                {
                    "id": "#multiqc_zip",
                    "outputSource": [
                        "#aggregate_visualize/multiqc_zip"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1479.285400390625,
                    "https://www.sevenbridges.com/y": 855
                },
                {
                    "id": "#multiqc_html",
                    "outputSource": [
                        "#aggregate_visualize/multiqc_html"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1479.285400390625,
                    "https://www.sevenbridges.com/y": 961.875
                },
                {
                    "id": "#outdir",
                    "outputSource": [
                        "#aggregate_visualize/outdir"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1479.285400390625,
                    "https://www.sevenbridges.com/y": 748.125
                },
                {
                    "id": "#collapsed_bam_genotyping_maf",
                    "outputSource": [
                        "#qc_generator/collapsed_bam_genotyping_maf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 921.3070068359375,
                    "https://www.sevenbridges.com/y": 803.4375
                },
                {
                    "id": "#duplex_bam_biometrics_dir",
                    "outputSource": [
                        "#qc_generator/duplex_bam_biometrics_dir"
                    ],
                    "type": [
                        "Directory",
                        {
                            "type": "array",
                            "items": "Directory"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 921.3070068359375,
                    "https://www.sevenbridges.com/y": 696.5625
                },
                {
                    "id": "#duplex_bam_genotyping_maf",
                    "outputSource": [
                        "#qc_generator/duplex_bam_genotyping_maf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 921.3070068359375,
                    "https://www.sevenbridges.com/y": 589.6875
                },
                {
                    "id": "#collapsed_bam_biometrics_dir",
                    "outputSource": [
                        "#qc_generator/collapsed_bam_biometrics_dir"
                    ],
                    "type": [
                        "Directory",
                        {
                            "type": "array",
                            "items": "Directory"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 921.3070068359375,
                    "https://www.sevenbridges.com/y": 910.3125
                },
                {
                    "id": "#multiqc_output_dir",
                    "outputSource": [
                        "#aggregate_visualize/multiqc_output_dir"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1406.6307373046875,
                    "https://www.sevenbridges.com/y": 1315.246826171875
                }
            ],
            "steps": [
                {
                    "id": "#qc_generator",
                    "in": [
                        {
                            "id": "#qc_generator/reference",
                            "source": "#reference"
                        },
                        {
                            "id": "#qc_generator/duplex_bam",
                            "source": "#duplex_bam"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam",
                            "source": "#collapsed_bam"
                        },
                        {
                            "id": "#qc_generator/group_reads_by_umi_bam",
                            "source": "#group_reads_by_umi_bam"
                        },
                        {
                            "id": "#qc_generator/uncollapsed_bam_base_recal",
                            "source": "#uncollapsed_bam_base_recal"
                        },
                        {
                            "id": "#qc_generator/pool_b_target_intervals",
                            "source": "#pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_generator/pool_b_bait_intervals",
                            "source": "#pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_generator/pool_a_target_intervals",
                            "source": "#pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_generator/pool_a_bait_intervals",
                            "source": "#pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_generator/noise_sites_bed",
                            "source": "#noise_sites_bed"
                        },
                        {
                            "id": "#qc_generator/sample_sex",
                            "source": "#sample_sex"
                        },
                        {
                            "id": "#qc_generator/sample_name",
                            "source": "#sample_name"
                        },
                        {
                            "id": "#qc_generator/sample_group",
                            "source": "#sample_group"
                        },
                        {
                            "id": "#qc_generator/simplex_bam",
                            "source": "#simplex_bam"
                        },
                        {
                            "id": "#qc_generator/vcf_file",
                            "source": "#biometrics_vcf_file"
                        },
                        {
                            "id": "#qc_generator/hotspots_maf",
                            "source": "#hotspots_maf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator/uncollapsed_bam_stats_pool_a_dir"
                        },
                        {
                            "id": "#qc_generator/uncollapsed_bam_stats_pool_b_dir"
                        },
                        {
                            "id": "#qc_generator/gatk_mean_quality_by_cycle_recal_dir"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_biometrics_dir"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_duplex_metrics_pool_b_dir"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_duplex_metrics_pool_a_dir"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_stats_pool_b_dir"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_stats_pool_a_dir"
                        },
                        {
                            "id": "#qc_generator/simplex_bam_pool_a_dir"
                        },
                        {
                            "id": "#qc_generator/simplex_bam_pool_b_dir"
                        },
                        {
                            "id": "#qc_generator/duplex_bam_sequence_qc_dir"
                        },
                        {
                            "id": "#qc_generator/duplex_bam_stats_pool_a_dir"
                        },
                        {
                            "id": "#qc_generator/duplex_bam_stats_pool_b_dir"
                        },
                        {
                            "id": "#qc_generator/duplex_bam_biometrics_dir"
                        },
                        {
                            "id": "#qc_generator/duplex_bam_genotyping_maf"
                        },
                        {
                            "id": "#qc_generator/duplex_biometrics_extract_pickle"
                        },
                        {
                            "id": "#qc_generator/collapsed_biometrics_extract_pickle"
                        },
                        {
                            "id": "#qc_generator/collapsed_bam_genotyping_maf"
                        }
                    ],
                    "run": "#qc_generator.cwl",
                    "label": "qc_generator",
                    "scatter": [
                        "#qc_generator/duplex_bam",
                        "#qc_generator/collapsed_bam",
                        "#qc_generator/group_reads_by_umi_bam",
                        "#qc_generator/uncollapsed_bam_base_recal",
                        "#qc_generator/sample_sex",
                        "#qc_generator/sample_name",
                        "#qc_generator/sample_group",
                        "#qc_generator/simplex_bam"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 288.796875,
                    "https://www.sevenbridges.com/y": 789.4375
                },
                {
                    "id": "#aggregate_visualize",
                    "in": [
                        {
                            "id": "#aggregate_visualize/duplex_extraction_files",
                            "source": [
                                "#qc_generator/duplex_biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/collapsed_extraction_files",
                            "source": [
                                "#qc_generator/collapsed_biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/uncollapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#qc_generator/uncollapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/simplex_bam_pool_b_dir",
                            "source": [
                                "#qc_generator/simplex_bam_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/simplex_bam_pool_a_dir",
                            "source": [
                                "#qc_generator/simplex_bam_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/gatk_mean_quality_by_cycle_recal_dir",
                            "source": [
                                "#qc_generator/gatk_mean_quality_by_cycle_recal_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/duplex_bam_stats_pool_b_dir",
                            "source": [
                                "#qc_generator/duplex_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/duplex_bam_stats_pool_a_dir",
                            "source": [
                                "#qc_generator/duplex_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/collapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#qc_generator/collapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/collapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#qc_generator/collapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/collapsed_bam_duplex_metrics_pool_b_dir",
                            "source": [
                                "#qc_generator/collapsed_bam_duplex_metrics_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/collapsed_bam_duplex_metrics_pool_a_dir",
                            "source": [
                                "#qc_generator/collapsed_bam_duplex_metrics_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/samples-json",
                            "source": "#samples-json"
                        },
                        {
                            "id": "#aggregate_visualize/config",
                            "source": "#multiqc_config"
                        },
                        {
                            "id": "#aggregate_visualize/duplex_bam_sequence_qc_dir",
                            "source": [
                                "#qc_generator/duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize/uncollapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#qc_generator/uncollapsed_bam_stats_pool_b_dir"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate_visualize/multiqc_zip"
                        },
                        {
                            "id": "#aggregate_visualize/multiqc_html"
                        },
                        {
                            "id": "#aggregate_visualize/outdir"
                        },
                        {
                            "id": "#aggregate_visualize/multiqc_output_dir"
                        }
                    ],
                    "run": "#aggregate_visualize.cwl",
                    "label": "aggregate_visualize",
                    "https://www.sevenbridges.com/x": 921.3070068359375,
                    "https://www.sevenbridges.com/y": 1122.1875
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "Workflow",
            "id": "#aggregate_visualize.cwl",
            "label": "aggregate_visualize",
            "inputs": [
                {
                    "id": "#aggregate_visualize.cwl/duplex_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.09375
                },
                {
                    "id": "#aggregate_visualize.cwl/collapsed_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1066.71875
                },
                {
                    "id": "#aggregate_visualize.cwl/uncollapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.65625
                },
                {
                    "id": "#aggregate_visualize.cwl/simplex_bam_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.3125
                },
                {
                    "id": "#aggregate_visualize.cwl/simplex_bam_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 319.96875
                },
                {
                    "id": "#aggregate_visualize.cwl/gatk_mean_quality_by_cycle_recal_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.3984375
                },
                {
                    "id": "#aggregate_visualize.cwl/duplex_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.75
                },
                {
                    "id": "#aggregate_visualize.cwl/duplex_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.40625
                },
                {
                    "id": "#aggregate_visualize.cwl/collapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.375
                },
                {
                    "id": "#aggregate_visualize.cwl/collapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.03125
                },
                {
                    "id": "#aggregate_visualize.cwl/collapsed_bam_duplex_metrics_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1386.6875
                },
                {
                    "id": "#aggregate_visualize.cwl/collapsed_bam_duplex_metrics_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1493.34375
                },
                {
                    "id": "#aggregate_visualize.cwl/samples-json",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.6640625
                },
                {
                    "id": "#aggregate_visualize.cwl/config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 582.6686401367188,
                    "https://www.sevenbridges.com/y": 940.3840942382812
                },
                {
                    "id": "#aggregate_visualize.cwl/duplex_bam_sequence_qc_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.0625
                },
                {
                    "id": "#aggregate_visualize.cwl/uncollapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                }
            ],
            "outputs": [
                {
                    "id": "#aggregate_visualize.cwl/multiqc_zip",
                    "outputSource": [
                        "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_zip"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1788.267333984375,
                    "https://www.sevenbridges.com/y": 640.015625
                },
                {
                    "id": "#aggregate_visualize.cwl/multiqc_html",
                    "outputSource": [
                        "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_html"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1788.267333984375,
                    "https://www.sevenbridges.com/y": 853.328125
                },
                {
                    "id": "#aggregate_visualize.cwl/outdir",
                    "outputSource": [
                        "#aggregate_visualize.cwl/post_agg_agg_agg/directory"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1515.5164794921875,
                    "https://www.sevenbridges.com/y": 679.34375
                },
                {
                    "id": "#aggregate_visualize.cwl/multiqc_output_dir",
                    "outputSource": [
                        "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_output_dir"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1788.267333984375,
                    "https://www.sevenbridges.com/y": 746.671875
                }
            ],
            "steps": [
                {
                    "id": "#aggregate_visualize.cwl/qc_aggregator",
                    "in": [
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/duplex_extraction_files",
                            "source": [
                                "#aggregate_visualize.cwl/duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/simplex_bam_pool_a_dir",
                            "source": [
                                "#aggregate_visualize.cwl/simplex_bam_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/simplex_bam_pool_b_dir",
                            "source": [
                                "#aggregate_visualize.cwl/simplex_bam_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/duplex_bam_sequence_qc_dir",
                            "source": [
                                "#aggregate_visualize.cwl/duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/duplex_bam_stats_pool_a_dir",
                            "source": [
                                "#aggregate_visualize.cwl/duplex_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/duplex_bam_stats_pool_b_dir",
                            "source": [
                                "#aggregate_visualize.cwl/duplex_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/collapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#aggregate_visualize.cwl/collapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/collapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#aggregate_visualize.cwl/collapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/collapsed_bam_duplex_metrics_pool_a_dir",
                            "source": [
                                "#aggregate_visualize.cwl/collapsed_bam_duplex_metrics_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/collapsed_bam_duplex_metrics_pool_b_dir",
                            "source": [
                                "#aggregate_visualize.cwl/collapsed_bam_duplex_metrics_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/gatk_mean_quality_by_cycle_recal_dir",
                            "source": [
                                "#aggregate_visualize.cwl/gatk_mean_quality_by_cycle_recal_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/uncollapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#aggregate_visualize.cwl/uncollapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/uncollapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#aggregate_visualize.cwl/uncollapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/collapsed_extraction_files",
                            "source": [
                                "#aggregate_visualize.cwl/collapsed_extraction_files"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate_visualize.cwl/qc_aggregator/directory_1"
                        }
                    ],
                    "run": "#qc_aggregator.cwl",
                    "label": "qc_aggregator",
                    "https://www.sevenbridges.com/x": 397.1875,
                    "https://www.sevenbridges.com/y": 655.6328125
                },
                {
                    "id": "#aggregate_visualize.cwl/general_stats_parse",
                    "in": [
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/directory",
                            "source": "#aggregate_visualize.cwl/qc_aggregator/directory_1"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/samples-json",
                            "source": "#aggregate_visualize.cwl/samples-json"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/config",
                            "source": "#aggregate_visualize.cwl/config"
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/sample_meta_tumor"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/sample_meta_normal"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_mqc"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_substitution_mqc"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_mqc_yaml"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/minor_contamination_sites_mqc"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/general_stats_parse/qc_criteria"
                        }
                    ],
                    "run": "#general_stats_parse.cwl",
                    "label": "general_stats_parse",
                    "https://www.sevenbridges.com/x": 930.6519775390625,
                    "https://www.sevenbridges.com/y": 660.797119140625
                },
                {
                    "id": "#aggregate_visualize.cwl/post_agg_agg_agg",
                    "in": [
                        {
                            "id": "#aggregate_visualize.cwl/post_agg_agg_agg/files",
                            "source": [
                                "#aggregate_visualize.cwl/general_stats_parse/sample_meta_tumor",
                                "#aggregate_visualize.cwl/general_stats_parse/sample_meta_normal",
                                "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_mqc",
                                "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_mqc_yaml",
                                "#aggregate_visualize.cwl/general_stats_parse/sequence_qc_substitution_mqc",
                                "#aggregate_visualize.cwl/general_stats_parse/minor_contamination_sites_mqc"
                            ]
                        },
                        {
                            "id": "#aggregate_visualize.cwl/post_agg_agg_agg/output_directory_name",
                            "default": "all_qc_files"
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate_visualize.cwl/post_agg_agg_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "post_agg_agg_agg",
                    "https://www.sevenbridges.com/x": 1303.04931640625,
                    "https://www.sevenbridges.com/y": 643.8613891601562
                },
                {
                    "id": "#aggregate_visualize.cwl/multiqc_1_10_1",
                    "in": [
                        {
                            "id": "#aggregate_visualize.cwl/multiqc_1_10_1/qc_files_dir",
                            "source": "#aggregate_visualize.cwl/post_agg_agg_agg/directory"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/multiqc_1_10_1/config",
                            "source": "#aggregate_visualize.cwl/config"
                        }
                    ],
                    "out": [
                        {
                            "id": "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_output_dir"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_html"
                        },
                        {
                            "id": "#aggregate_visualize.cwl/multiqc_1_10_1/multiqc_zip"
                        }
                    ],
                    "run": "#multiqc.cwl",
                    "https://www.sevenbridges.com/x": 1515.5164794921875,
                    "https://www.sevenbridges.com/y": 800
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#general_stats_parse.cwl",
            "baseCommand": [
                "general_stats_parse.py"
            ],
            "inputs": [
                {
                    "id": "#general_stats_parse.cwl/directory",
                    "type": "Directory",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--dir"
                    },
                    "doc": "Directory containing results."
                },
                {
                    "id": "#general_stats_parse.cwl/samples-json",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--samples-json"
                    },
                    "doc": "Sample JSON file."
                },
                {
                    "id": "#general_stats_parse.cwl/config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--config"
                    },
                    "doc": "MultQC config file."
                }
            ],
            "outputs": [
                {
                    "id": "#general_stats_parse.cwl/sample_meta_tumor",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "genstats_qc_status_plasma.csv"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/sample_meta_normal",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "genstats_qc_status_buffy.csv"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/sequence_qc_mqc",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "sequence_qc_mqc.html"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/sequence_qc_substitution_mqc",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "sequence_qc_substitution_mqc.yaml"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/sequence_qc_mqc_yaml",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "sequence_qc_mqc.yaml"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/minor_contamination_sites_mqc",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "minor_contamination_sites_mqc.html"
                    }
                },
                {
                    "id": "#general_stats_parse.cwl/qc_criteria",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "qc_criteria.csv"
                    }
                }
            ],
            "label": "general_stats_parse",
            "requirements": [
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/access_utils:0.1.1"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_genotype.cwl",
            "baseCommand": [
                "biometrics",
                "genotype"
            ],
            "inputs": [
                {
                    "id": "#biometrics_genotype.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "position": 0,
                            "prefix": "--input"
                        }
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_genotype.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.05,
                    "id": "#biometrics_genotype.cwl/discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--discordance-threshold"
                    },
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)"
                },
                {
                    "id": "#biometrics_genotype.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_genotype.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_genotype.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_genotype.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                },
                {
                    "default": 2,
                    "id": "#biometrics_genotype.cwl/threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threads"
                    },
                    "doc": "Number of threads to use."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_comparisons",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_comparison.csv'\n  } else {\n    return 'genotype_comparison.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_input.csv'\n  } else {\n    return 'genotype_clusters_input.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_cluster_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  if (inputs.prefix) {\n    return inputs.prefix + '_genotype_clusters_database.csv'\n  } else {\n    return 'genotype_clusters_database.csv'\n  }\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_input.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_genotype.cwl/biometrics_genotype_plot_input_database",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'genotype_comparison_database.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_major.cwl",
            "baseCommand": [
                "biometrics",
                "major"
            ],
            "inputs": [
                {
                    "id": "#biometrics_major.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_major.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.6,
                    "id": "#biometrics_major.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--major-threshold"
                    },
                    "doc": "Major contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_major.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_major.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_major.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_major.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_major.cwl/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl/biometrics_major_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'major_contamination.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_minor.cwl",
            "baseCommand": [
                "biometrics",
                "minor"
            ],
            "inputs": [
                {
                    "id": "#biometrics_minor.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_minor.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.002,
                    "id": "#biometrics_minor.cwl/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--minor-threshold"
                    },
                    "doc": "Minor contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_minor.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_minor.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_minor.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_minor.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl/biometrics_minor_sites_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination_sites.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_sexmismatch.cwl",
            "baseCommand": [
                "biometrics",
                "sexmismatch"
            ],
            "inputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 50,
                    "id": "#biometrics_sexmismatch.cwl/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--coverage-threshold"
                    },
                    "doc": "Samples with Y chromosome above this value will be considered male."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.csv'\n    } else {\n      return 'sex_mismatch.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_sexmismatch.cwl/biometrics_sexmismatch_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.json'\n    } else {\n      return 'sex_mismatch.json'\n    }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "ExpressionTool",
            "id": "#put_in_dir.cwl",
            "inputs": [
                {
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            {
                                "type": "array",
                                "items": [
                                    "File"
                                ]
                            },
                            "Directory",
                            "null"
                        ]
                    },
                    "id": "#put_in_dir.cwl/files"
                },
                {
                    "type": "string",
                    "doc": "Put all `files` in a directory called `output_directory_name`.",
                    "id": "#put_in_dir.cwl/output_directory_name"
                },
                {
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "If specified, nest all `files` within a directory called `output_subdirectory_name`, which itself is within `output_directory_name`.",
                    "id": "#put_in_dir.cwl/output_subdirectory_name"
                }
            ],
            "outputs": [
                {
                    "type": "Directory",
                    "id": "#put_in_dir.cwl/directory"
                }
            ],
            "expression": "${\n  var output_files = [];\n  var input_files = inputs.files.filter(function(single_file) {\n    return String(single_file).toUpperCase() != 'NONE';\n  });\n\n  for (var i = 0; i < input_files.length; i++) {\n    // Handle list of list of files\n    if (input_files[i] && input_files[i].length) {\n      for (var ii = 0; ii < input_files[i].length; ii++) {\n        output_files.push(input_files[i][ii]);\n      }\n    // Handle list of files\n    } else if (input_files[i]) {\n      output_files.push(input_files[i]);\n    }\n  }\n\n  if (inputs.output_subdirectory_name) {\n    return {\n      'directory': {\n        'class': 'Directory',\n        'basename': inputs.output_directory_name,\n        'listing': [\n        {\n          'class': 'Directory',\n          'basename': inputs.output_subdirectory_name,\n          'listing': output_files\n        }\n        ]\n      }\n    };\n  } else {\n    return {\n      'directory': {\n        'class': 'Directory',\n        'basename': inputs.output_directory_name,\n        'listing': output_files\n      }\n    };\n  }\n\n}\n",
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 2000,
                    "coresMin": 1
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "baseCommand": [
                "multiqc"
            ],
            "inputs": [
                {
                    "id": "#multiqc.cwl/qc_files_dir",
                    "type": [
                        "null",
                        "Directory"
                    ],
                    "inputBinding": {
                        "position": 999
                    },
                    "doc": "qc files in a Directory\n"
                },
                {
                    "default": "multiqc_1.10.1.7",
                    "id": "#multiqc.cwl/report_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--filename"
                    },
                    "doc": "name used for the html report and the corresponding zip file"
                },
                {
                    "id": "#multiqc.cwl/config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--config"
                    }
                }
            ],
            "outputs": [
                {
                    "id": "#multiqc.cwl/multiqc_output_dir",
                    "type": "Directory",
                    "outputBinding": {
                        "glob": ".",
                        "outputEval": "${\n    self[0].basename = inputs.report_name.replace('.html', '');\n    return self[0]\n}"
                    }
                },
                {
                    "id": "#multiqc.cwl/multiqc_html",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.report_name) {\n        return inputs.report_name + \".html\"\n    } else {\n        return \"multiqc_1.10.1.7.html\"\n    }\n}"
                    }
                },
                {
                    "id": "#multiqc.cwl/multiqc_zip",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "$(inputs.report_name)_data.zip"
                    }
                }
            ],
            "doc": "Run multiqc on log files from supported bioinformatic tools.\n",
            "hints": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 10000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/multiqc:v1.10.1.7"
                }
            ],
            "requirements": [
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "id": "#multiqc.cwl"
        },
        {
            "class": "Workflow",
            "id": "#bam_qc_stats.cwl",
            "label": "bam_qc_stats",
            "inputs": [
                {
                    "id": "#bam_qc_stats.cwl/input",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 374.0625
                },
                {
                    "id": "#bam_qc_stats.cwl/target_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 160.3125
                },
                {
                    "id": "#bam_qc_stats.cwl/bait_intervals",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 480.9375
                },
                {
                    "id": "#bam_qc_stats.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 267.1875
                },
                {
                    "id": "#bam_qc_stats.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 53.4375
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_mapping_quality",
                    "https://www.sevenbridges.com/x": 1,
                    "https://www.sevenbridges.com/y": 613
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_minimum_base_quality",
                    "https://www.sevenbridges.com/x": 3,
                    "https://www.sevenbridges.com/y": 743
                },
                {
                    "id": "#bam_qc_stats.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "hsmetrics_coverage_cap",
                    "https://www.sevenbridges.com/x": 2,
                    "https://www.sevenbridges.com/y": 872
                }
            ],
            "outputs": [
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_histogram_pdf",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 106.875
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 213.75
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 427.5
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_per_target_coverage_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 320.625
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_txt",
                    "outputSource": [
                        "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 700.636962890625,
                    "https://www.sevenbridges.com/y": 534.375
                }
            ],
            "steps": [
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/reference",
                            "source": "#bam_qc_stats.cwl/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_alignment_summary_metrics_4_1_3_0/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectAlignmentSummaryMetrics",
                    "https://www.sevenbridges.com/x": 334.2886657714844,
                    "https://www.sevenbridges.com/y": 560.505126953125
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/bait_intervals",
                            "source": "#bam_qc_stats.cwl/bait_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/target_intervals",
                            "source": "#bam_qc_stats.cwl/target_intervals"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/coverage_cap",
                            "source": "#bam_qc_stats.cwl/hsmetrics_coverage_cap"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_base_quality",
                            "source": "#bam_qc_stats.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/minimum_mapping_quality",
                            "source": "#bam_qc_stats.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/reference",
                            "source": "#bam_qc_stats.cwl/reference"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_hs_metrics_4_1_8_0/gatk_collect_hs_metrics_per_target_coverage_txt"
                        }
                    ],
                    "run": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectHsMetrics",
                    "https://www.sevenbridges.com/x": 327.8453674316406,
                    "https://www.sevenbridges.com/y": 372.8453674316406
                },
                {
                    "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0",
                    "in": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/input",
                            "source": "#bam_qc_stats.cwl/input"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/histogram_file",
                            "default": "histogram.pdf"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/temporary_directory",
                            "source": "#bam_qc_stats.cwl/temporary_directory"
                        }
                    ],
                    "out": [
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#bam_qc_stats.cwl/gatk_collect_insert_size_metrics_4_1_8_0/gatk_collect_insert_size_metrics_histogram_pdf"
                        }
                    ],
                    "run": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
                    "label": "GATK-CollectInsertSizeMetrics",
                    "https://www.sevenbridges.com/x": 335.57733154296875,
                    "https://www.sevenbridges.com/y": 194.7628936767578
                }
            ],
            "requirements": [],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Charles Murphy"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/uncollapsed_bam_generation",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:shahr2@mskcc.org",
                    "https://schema.org/identifier": "https://orcid.org/0000-0001-9042-6213",
                    "https://schema.org/name": "Ronak Shah"
                }
            ],
            "https://schema.org/dateCreated": "2020-09-23",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_extract.cwl",
            "baseCommand": [
                "biometrics",
                "extract"
            ],
            "inputs": [
                {
                    "id": "#biometrics_extract.cwl/sample_bam",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-bam"
                    },
                    "doc": "BAM file.",
                    "secondaryFiles": [
                        "^.bai"
                    ]
                },
                {
                    "id": "#biometrics_extract.cwl/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-sex"
                    },
                    "doc": "Expected sample sex (i.e. M or F)."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-group"
                    },
                    "doc": "The sample group (e.g. the sample patient ID)."
                },
                {
                    "id": "#biometrics_extract.cwl/sample_name",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample-name"
                    },
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file."
                },
                {
                    "id": "#biometrics_extract.cwl/fafile",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fafile"
                    },
                    "doc": "Path to reference fasta.",
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ]
                },
                {
                    "id": "#biometrics_extract.cwl/vcf_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "VCF file containing the SNPs to be queried."
                },
                {
                    "id": "#biometrics_extract.cwl/bed_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bed"
                    },
                    "doc": "BED file containing the intervals to be queried."
                },
                {
                    "id": "#biometrics_extract.cwl/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 1,
                    "id": "#biometrics_extract.cwl/min_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-mapping-quality"
                    },
                    "doc": "Minimum mapping quality of reads to be used for pileup."
                },
                {
                    "default": 1,
                    "id": "#biometrics_extract.cwl/min_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-base-quality"
                    },
                    "doc": "Minimum base quality of reads to be used for pileup."
                },
                {
                    "default": 10,
                    "id": "#biometrics_extract.cwl/min_coverage",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-coverage"
                    },
                    "doc": "Minimum coverage to count a site."
                },
                {
                    "default": 0.1,
                    "id": "#biometrics_extract.cwl/min_homozygous_thresh",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min-homozygous-thresh"
                    },
                    "doc": "Minimum threshold to define homozygous."
                },
                {
                    "id": "#biometrics_extract.cwl/default_genotype",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--default-genotype"
                    },
                    "doc": "Default genotype if coverage is too low (options are Het or Hom)."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_extract.cwl/biometrics_extract_pickle",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if (inputs.database) {\n    return inputs.database + '/' + inputs.sample_name + '.pickle';\n  } else {\n    return inputs.sample_name + '.pickle';\n  }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_major.cwl_2",
            "baseCommand": [
                "biometrics",
                "major"
            ],
            "inputs": [
                {
                    "id": "#biometrics_major.cwl_2/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_major.cwl_2/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.6,
                    "id": "#biometrics_major.cwl_2/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--major-threshold"
                    },
                    "doc": "Major contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_major.cwl_2/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_major.cwl_2/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_major.cwl_2/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_major.cwl_2/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_major.cwl_2/biometrics_major_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.csv'\n    } else {\n      return 'major_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl_2/biometrics_major_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_major_contamination.json'\n    } else {\n      return 'major_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_major.cwl_2/biometrics_major_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'major_contamination.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_minor.cwl_2",
            "baseCommand": [
                "biometrics",
                "minor"
            ],
            "inputs": [
                {
                    "id": "#biometrics_minor.cwl_2/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_minor.cwl_2/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 0.002,
                    "id": "#biometrics_minor.cwl_2/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--minor-threshold"
                    },
                    "doc": "Minor contamination threshold for bad sample."
                },
                {
                    "id": "#biometrics_minor.cwl_2/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_minor.cwl_2/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--plot"
                    },
                    "doc": "Also output plots of the data."
                },
                {
                    "id": "#biometrics_minor.cwl_2/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_minor.cwl_2/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_minor.cwl_2/biometrics_minor_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.csv'\n    } else {\n      return 'minor_contamination.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl_2/biometrics_minor_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_minor_contamination.json'\n    } else {\n      return 'minor_contamination.json'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl_2/biometrics_minor_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination.html'\n}"
                    }
                },
                {
                    "id": "#biometrics_minor.cwl_2/biometrics_minor_sites_plot",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  return 'minor_contamination_sites.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#biometrics_sexmismatch.cwl_2",
            "baseCommand": [
                "biometrics",
                "sexmismatch"
            ],
            "inputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl_2/input",
                    "type": {
                        "type": "array",
                        "items": "File",
                        "inputBinding": {
                            "prefix": "--input"
                        }
                    },
                    "inputBinding": {
                        "position": 0
                    },
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl_2/database",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--database"
                    },
                    "doc": "Directory to store the intermediate files after running the extraction step."
                },
                {
                    "default": 50,
                    "id": "#biometrics_sexmismatch.cwl_2/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--coverage-threshold"
                    },
                    "doc": "Samples with Y chromosome above this value will be considered male."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl_2/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--prefix"
                    },
                    "doc": "Output file prefix."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl_2/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--json"
                    },
                    "doc": "Also output data in JSON format."
                },
                {
                    "id": "#biometrics_sexmismatch.cwl_2/no_db_comparison",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--no-db-compare"
                    },
                    "doc": "Do not compare the sample(s) you provided to all samples in the database, only compare them with each other."
                }
            ],
            "outputs": [
                {
                    "id": "#biometrics_sexmismatch.cwl_2/biometrics_sexmismatch_csv",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.csv'\n    } else {\n      return 'sex_mismatch.csv'\n    }\n}"
                    }
                },
                {
                    "id": "#biometrics_sexmismatch.cwl_2/biometrics_sexmismatch_json",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.prefix) {\n      return inputs.prefix + '_sex_mismatch.json'\n    } else {\n      return 'sex_mismatch.json'\n    }\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/biometrics:0.2.13"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "biometrics",
                    "http://usefulinc.com/ns/doap#revision": "0.2.13"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl",
            "baseCommand": [
                "fgbio"
            ],
            "inputs": [
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--input"
                    },
                    "doc": "Input BAM file generated by GroupReadByUmi."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/output_prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Prefix of output files to write."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/intervals",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--intervals"
                    },
                    "doc": "Optional set of intervals over which to restrict analysis. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/description",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--description"
                    },
                    "doc": "Description of data set used to label plots. Defaults to sample/library. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/duplex_umi_counts",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--duplex-umi-counts"
                    },
                    "doc": "If true, produce the .duplex_umi_counts.txt file with counts of duplex UMI observations. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/min_ab_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-ab-reads"
                    },
                    "doc": "Minimum AB reads to call a tag family a 'duplex'. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/min_ba_reads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--min-ba-reads"
                    },
                    "doc": "Minimum BA reads to call a tag family a 'duplex'. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/umi_tag",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--umi-tag"
                    },
                    "doc": "The tag containing the raw UMI. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/mi_tag",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 2,
                        "prefix": "--mi-tag"
                    },
                    "doc": "The output tag for UMI grouping. [Optional]."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null."
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/async_io",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "separate": false,
                        "prefix": "--async-io="
                    },
                    "doc": "'Use asynchronous I/O where possible, e.g. for SAM and BAM files [=true|false].'"
                }
            ],
            "outputs": [
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_family_size",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n     if(inputs.output_prefix){\n         return  inputs.output_prefix + '.family_sizes.txt'\n     }\n     else{\n         return inputs.input.basename.replace('.bam','.family_sizes.txt')\n     }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_family_size",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_family_sizes.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_family_sizes.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_yield_metrics.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_yield_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_umi_counts",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.umi_counts.txt'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.umi_counts.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_qc",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_prefix){\n        return  inputs.output_prefix + '.duplex_qc.pdf'\n    }\n    else{\n        return inputs.input.basename.replace('.bam','.duplex_qc.pdf')\n    }\n}"
                    }
                },
                {
                    "id": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl/fgbio_collect_duplex_seq_metrics_duplex_umi_counts",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_prefix) {\n        return  inputs.output_prefix + '.duplex_umi_counts.txt'\n    } else {\n        return inputs.input.basename.replace('.bam','.duplex_umi_counts.txt')\n    }\n}"
                    }
                }
            ],
            "doc": "Collects a suite of metrics to QC duplex sequencing data.\nInputs ------\nThe input to this tool must be a BAM file that is either:\n1. The exact BAM output by the 'GroupReadsByUmi' tool (in the sort-order it was produced in) 2. A BAM file that has MI tags present on all reads (usually set by 'GroupReadsByUmi' and has been sorted with\n   'SortBam' into 'TemplateCoordinate' order.\n\nCalculation of metrics may be restricted to a set of regions using the '--intervals' parameter. This can significantly affect results as off-target reads in duplex sequencing experiments often have very different properties than on-target reads due to the lack of enrichment.\nSeveral metrics are calculated related to the fraction of tag families that have duplex coverage. The definition of \"duplex\" is controlled by the '--min-ab-reads' and '--min-ba-reads' parameters. The default is to treat any tag family with at least one observation of each strand as a duplex, but this could be made more stringent, e.g. by setting '--min-ab-reads=3 --min-ba-reads=3'. If different thresholds are used then '--min-ab-reads' must be the higher value.\nOutputs -------\nThe following output files are produced:\n1. <output>.family_sizes.txt: metrics on the frequency of different types of families of different sizes 2. <output>.duplex_family_sizes.txt: metrics on the frequency of duplex tag families by the number of observations\n   from each strand\n3. <output>.duplex_yield_metrics.txt: summary QC metrics produced using 5%, 10%, 15%...100% of the data 4. <output>.umi_counts.txt: metrics on the frequency of observations of UMIs within reads and tag families 5. <output>.duplex_qc.pdf: a series of plots generated from the preceding metrics files for visualization 6. <output>.duplex_umi_counts.txt: (optional) metrics on the frequency of observations of duplex UMIs within reads\n   and tag families. This file is only produced if the '--duplex-umi-counts' option is used as it requires significantly\n   more memory to track all pairs of UMIs seen when a large number of UMI sequences are present.\n\nWithin the metrics files the prefixes 'CS', 'SS' and 'DS' are used to mean:\n* CS: tag families where membership is defined solely on matching genome coordinates and strand * SS: single-stranded tag families where membership is defined by genome coordinates, strand and UMI; ie. 50/A and\n  50/B are considered different tag families.\n* DS: double-stranded tag families where membership is collapsed across single-stranded tag families from the same\n  double-stranded source molecule; i.e. 50/A and 50/B become one family\n\nRequirements ------------\nFor plots to be generated R must be installed and the ggplot2 package installed with suggested dependencies. Successfully executing the following in R will ensure a working installation:\ninstall.packages(\"ggplot2\", repos=\"http://cran.us.r-project.org\", dependencies=TRUE)",
            "label": "fgbio_collect_duplex_seq_metrics_1.2.0",
            "arguments": [
                {
                    "position": 0,
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx12G\"\n  }\n  else {\n      return \"-Xmx12G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "valueFrom": "-XX:-UseGCOverheadLimit"
                },
                {
                    "position": 1,
                    "valueFrom": "CollectDuplexSeqMetrics"
                },
                {
                    "position": 0,
                    "prefix": "--tmp-dir=",
                    "separate": false,
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "--output",
                    "valueFrom": "${\n    if(inputs.output_prefix){\n        return inputs.output_prefix\n    }\n    else{\n        return inputs.input.basename.replace(/.bam/,'')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/fgbio:1.2.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "fgbio CollectDuplexSeqMetrics",
                    "http://usefulinc.com/ns/doap#revision": "1.2.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectAlignmentSummaryMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/adaptor_sequence",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ADAPTER_SEQUENCE"
                    },
                    "doc": "List of adapter sequences to use when processing the alignment metrics.  This argument may be specified 0 or more times. Default value: [AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCGGTTCAGCAGGAATGCCGAGACCGATCTCGTATGCCGTCTTCTGCTTG, AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT, AGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/expected_pair_orientations",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--EXPECTED_PAIR_ORIENTATIONS"
                    },
                    "doc": "Paired-end reads that do not have this expected orientation will be considered chimeric. This argument may be specified 0 or more times. Default value: [FR]. Possible values: {FR, RF, TANDEM}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/is_bisulfite_sequenced",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--IS_BISULFITE_SEQUENCED"
                    },
                    "doc": "Whether the SAM or BAM file consists of bisulfite sequenced reads.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/max_insert_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MAX_INSERT_SIZE"
                    },
                    "doc": "Paired-end reads above this insert size will be considered chimeric along with inter-chromosomal pairs.  Default value: 100000."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "default": true,
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/stop_after",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--STOP_AFTER"
                    },
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_DEFLATER"
                    },
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_INFLATER"
                    },
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input"
                },
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_alignment_summary_metrics_4.1.8.0.cwl/gatk_collect_alignment_summary_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectAlignmentSummaryMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_alignment_summary_metrics.txt')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectHsMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/bait_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--BAIT_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the baits used.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/target_intervals",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--TARGET_INTERVALS"
                    },
                    "doc": "An interval list file that contains the locations of the targets.  This argument must be specified at least once. Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The output file to write the metrics to.  Required."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/per_base_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per base coverage information to. The per-base file contains one line per target base and can grow very large. It is not recommended for use with large target sets.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/per_target_coverage",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "An optional file to output per target coverage information to.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/theoretical_sensitivity_output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--THEORETICAL_SENSITIVITY_OUTPUT"
                    },
                    "doc": "Output for Theoretical Sensitivity metrics where the allele fractions are provided by the ALLELE_FRACTION argument.  Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/allele_fraction",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ALLELE_FRACTION"
                    },
                    "doc": "Allele fraction for which to calculate theoretical sensitivity.  This argument may be specified 0 or more times. Default value: [0.001, 0.005, 0.01, 0.02, 0.05, 0.1, 0.2, 0.3, 0.5]."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/bait_set_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--BAIT_SET_NAME"
                    },
                    "doc": "Bait set name. If not provided it is inferred from the filename of the bait intervals. Default value: null."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/clip_overlapping_reads",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CLIP_OVERLAPPING_READS"
                    },
                    "doc": "True if we are to clip overlapping reads, false otherwise.  Default value: true. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--COVERAGE_CAP"
                    },
                    "doc": "Parameter to set a max coverage limit for Theoretical Sensitivity calculations. Default is 200.  Default value: 200."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/include_indels",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--INCLUDE_INDELS"
                    },
                    "doc": "If true count inserted bases as on target and deleted bases as covered by a read.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_BASE_QUALITY"
                    },
                    "doc": "Minimum base quality for a base to contribute coverage.  Default value: 20."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_MAPPING_QUALITY"
                    },
                    "doc": "Minimum mapping quality for a read to contribute coverage.  Default value: 20."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/near_distance",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--NEAR_DISTANCE"
                    },
                    "doc": "The maximum distance between a read and the nearest probe/bait/amplicon for the read to be considered 'near probe' and included in percent selected.  Default value: 250."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/sample_size",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--SAMPLE_SIZE"
                    },
                    "doc": "Sample Size used for Theoretical Het Sensitivity sampling. Default is 10000.  Default value: 10000."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_per_base_coverage_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_hs_metrics_4.1.8.0.cwl/gatk_collect_hs_metrics_per_target_coverage_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectHsMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_hs_metrics.txt')\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--PER_TARGET_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_target_coverage){\n        return inputs.per_target_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_target_coverage.txt')\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--PER_BASE_COVERAGE",
                    "valueFrom": "${\n    if(inputs.per_base_coverage){\n        return inputs.per_base_coverage\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_per_base_coverage.txt')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "CollectInsertSizeMetrics"
            ],
            "inputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "Input file (bam or sam).  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write the output to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/histogram_file",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "File to write insert size Histogram chart to.  Required."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/deviations",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--DEVIATIONS"
                    },
                    "doc": "Generate mean, sd and plots by trimming the data down to MEDIAN + DEVIATIONS*MEDIAN_ABSOLUTE_DEVIATION. This is done because insert size data typically includes enough anomalous values from chimeras and other artifacts to make the mean and sd grossly misleading regarding the real distribution.  Default value: 10.0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/histogram_width",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--HISTOGRAM_WIDTH"
                    },
                    "doc": "Explicitly sets the Histogram width, overriding automatic truncation of Histogram tail. Also, when calculating mean and standard deviation, only bins <= Histogram_WIDTH will be included.  Default value: null."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/minimum_pct",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MINIMUM_PCT"
                    },
                    "doc": "When generating the Histogram, discard any data categories (out of FR, TANDEM, RF) that have fewer than this percentage of overall reads. (Range: 0 to 1).  Default value: 0.05. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/metrics_acciumulation_level",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--METRIC_ACCUMULATION_LEVEL"
                    },
                    "doc": "The level(s) at which to accumulate metrics. Default value: [ALL_READS]. This option can be set to 'null' to clear the default value. Possible values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP} This option may be specified 0 or more times. This option can be set to 'null' to clear the default list."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/include_duplicates",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--INCLUDE_DUPLICATES"
                    },
                    "doc": "If true, also include reads marked as duplicates in the insert size histogram.  Default value: false. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "default": true,
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.  Default value: true. This option can be set to 'null' to clear the default value. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/stop_after",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--STOP_AFTER"
                    },
                    "doc": "Stop after processing N reads, mainly for debugging. Default value: 0. This option can be set to 'null' to clear the default value."
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created.    Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/use_jdk_deflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_DEFLATER"
                    },
                    "doc": "Use the JDK Deflater instead of the Intel Deflater for writing compressed output"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/use_jdk_inflater",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--USE_JDK_INFLATER"
                    },
                    "doc": "Use the JDK Inflater instead of the Intel Inflater for reading compressed input"
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_txt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_collect_insert_size_metrics_4.1.8.0.cwl/gatk_collect_insert_size_metrics_histogram_pdf",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-CollectInsertSizeMetrics",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 2,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_insert_size_metrics.txt')\n    }\n}"
                },
                {
                    "position": 2,
                    "prefix": "-H",
                    "valueFrom": "${\n    if(inputs.histogram_file){\n        return inputs.histogram_file\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_histogram.pdf')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 32000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "MeanQualityByCycle"
            ],
            "inputs": [
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/output_file_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The output file to write the metrics to."
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/chart_output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "A file (with .pdf extension) to write the chart to."
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/assume_sorted",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--ASSUME_SORTED"
                    },
                    "doc": "If true (default), then the sort order in the header file will be ignored.\n"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/pf_reads_only",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--PF_READS_ONLY"
                    },
                    "doc": "If set to true calculate mean quality over PF reads only.  Default value: false. Possible values: {true, false}\n"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file. Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created. Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Directory with space available to be used by this program for temporary storage of working files."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/gatk_mean_quality_by_cycle_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_mean_quality_by_cycle.txt')\n    }\n}"
                    }
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl/gatk_mean_quality_by_cycle_chart_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if(inputs.chart_output){\n        return inputs.chart_output\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_mean_quality_by_cycle.pdf')\n    }\n}"
                    }
                }
            ],
            "label": "GATK-MeanQualityByCycle",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx14G\"\n  }\n  else {\n      return \"-Xmx14G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory) {\n      return inputs.temporary_directory;\n    }\n    return runtime.tmpdir;\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output_file_name){\n        return inputs.output_file_name\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_mean_quality_by_cycle.txt')\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--CHART_OUTPUT",
                    "valueFrom": "${\n    if(inputs.chart_output){\n        return inputs.chart_output\n    } else {\n        return inputs.input.basename.replace(/.bam/, '_mean_quality_by_cycle.pdf')\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#gatk_revert_sam_4.1.8.0.cwl",
            "baseCommand": [
                "gatk",
                "RevertSam"
            ],
            "inputs": [
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/input",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-I"
                    },
                    "doc": "An aligned SAM or BAM file.  Required."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "The output SAM/BAM file to create, or an output directory if OUTPUT_BY_READGROUP is true. Required.  Cannot be used in conjunction with argument(s) OUTPUT_MAP (OM)"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/output_map",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Tab separated file with two columns, READ_GROUP_ID and OUTPUT, providing file mapping only used if OUTPUT_BY_READGROUP is true.  Required.  Cannot be used in conjunction with argument(s) OUTPUT (O)"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/attribute_to_clear",
                    "type": [
                        "null",
                        {
                            "type": "array",
                            "items": "string",
                            "inputBinding": {
                                "position": 0,
                                "prefix": "--ATTRIBUTE_TO_CLEAR"
                            }
                        }
                    ],
                    "doc": "When removing alignment information, the set of optional tags to remove.  This may be specified 0 or more times. Default value: [NM, UQ, PG, MD, MQ, SA, MC, AS]."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/max_discard_fraction",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MAX_DISCARD_FRACTION"
                    },
                    "doc": "If SANITIZE=true and higher than MAX_DISCARD_FRACTION reads are discarded due to sanitization thenthe program will exit with an Exception instead of exiting cleanly. Output BAM will still be valid.  Default value: 0.01."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/library_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--LIBRARY_NAME"
                    },
                    "doc": "The library name to use in the reverted output file.  This will override the existing sample alias in the file and is used only if all the read groups in the input file have the same library name.  Default value: null."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/max_records_in_ram",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--MAX_RECORDS_IN_RAM"
                    },
                    "doc": "When writing files that need to be sorted, this will specify the number of records stored in RAM before spilling to disk. Increasing this number reduces the number of file handles needed to sort the file, and increases the amount of RAM needed.  Default value: 500000."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/output_by_readgroup",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "false",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--OUTPUT_BY_READGROUP"
                    },
                    "doc": "When true, outputs each read group in a separate file.  Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/output_by_readgroup_file_format",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--OUTPUT_BY_READGROUP_FILE_FORMAT"
                    },
                    "doc": "When using OUTPUT_BY_READGROUP, the output file format can be set to a certain format. Default value: dynamic. sam (Generate SAM files.) bam (Generate BAM files.) cram (Generate CRAM files.) dynamic (Generate files based on the extention of INPUT.)"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/remove_alignment_information",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "true",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--REMOVE_ALIGNMENT_INFORMATION"
                    },
                    "doc": "Remove all alignment information from the file.  Default value: true. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/remove_duplicate_information",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "true",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--REMOVE_DUPLICATE_INFORMATION"
                    },
                    "doc": "Remove duplicate read flags from all reads.  Note that if this is false and\nREMOVE_ALIGNMENT_INFORMATION==true,  the output may have the unusual but sometimes\ndesirable trait of having unmapped reads that are marked as duplicates.  Default value:\ntrue. Possible values: {true, false}\n"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/restore_hardclips",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "true",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--RESTORE_HARDCLIPS"
                    },
                    "doc": "When true, restores reads and qualities of records with hard-clips containing XB and XQ tags.  Default value: true. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/restore_original_qualities",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "true",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--RESTORE_ORIGINAL_QUALITIES"
                    },
                    "doc": "True to restore original qualities from the OQ field to the QUAL field if available. Default value: true. Possible values: {true, false}\n"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/sample_alias",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--SAMPLE_ALIAS"
                    },
                    "doc": "The sample alias to use in the reverted output file.  This will override the existing\nsample alias in the file and is used only if all the read groups in the input file have\nthe same sample alias.  Default value: null.\n"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/sanitize",
                    "type": [
                        "null",
                        "string"
                    ],
                    "default": "false",
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--SANITIZE"
                    },
                    "doc": "WARNING: This option is potentially destructive. If enabled will discard reads in order to\nproduce a consistent output BAM. Reads discarded include (but are not limited to) paired\nreads with missing mates, duplicated records, records with mismatches in length of bases\nand qualities. This option can only be enabled if the output sort order is queryname and\nwill always cause sorting to occur.  Default value: false. Possible values: {true, false}\n"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/sort_order",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 1,
                        "prefix": "--SORT_ORDER"
                    },
                    "doc": "The sort order to create the reverted output file with.  Default value: queryname. Possible values: {unsorted, queryname, coordinate, duplicate, unknown}\n"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/reference",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "-R"
                    },
                    "doc": "Reference sequence file. Note that while this argument is not required, without it only a small subset of the metrics will be calculated. Note also that if a reference sequence is provided, it must be accompanied by a sequence dictionary.  Default value: null.",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ]
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/validation_stringency",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--VALIDATION_STRINGENCY"
                    },
                    "doc": "Validation stringency for all SAM files read by this program.  Setting stringency to SILENT can improve performance when processing a BAM file in which variable-length data (read, qualities, tags) do not otherwise need to be decoded.  Default value: STRICT. This option can be set to 'null' to clear the default value. Possible values: {STRICT,LENIENT, SILENT}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/compression_level",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--COMPRESSION_LEVEL"
                    },
                    "doc": "Compression level for all compressed files created (e.g. BAM and VCF).  Default value: 2."
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/create_index",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_INDEX"
                    },
                    "doc": "Whether to create a BAM index when writing a coordinate-sorted BAM file. Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/create_md5_file",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--CREATE_MD5_FILE"
                    },
                    "doc": "Whether to create an MD5 digest for any BAM or FASTQ files created. Default value: false. Possible values: {true, false}"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/temporary_directory",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Default value: null. This option may be specified 0 or more times."
                }
            ],
            "outputs": [
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/gatk_revert_sam_output",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n  if(inputs.output){\n      return inputs.output\n  } else {\n      return inputs.input.basename.replace(/.bam|.sam/, '_revertsam.bam')\n  }\n}"
                    }
                },
                {
                    "id": "#gatk_revert_sam_4.1.8.0.cwl/gatk_revert_sam_output_map",
                    "type": [
                        "null",
                        "File"
                    ],
                    "outputBinding": {
                        "glob": "${\n  if(inputs.output_map){\n      return inputs.output_map\n  } else {\n      return inputs.input.basename.replace(/.bam|.sam/, '_revertsam.tsv')\n  }\n}"
                    }
                }
            ],
            "label": "GATK-RevertSam",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "--java-options",
                    "valueFrom": "${\n  if(inputs.memory_per_job && inputs.memory_overhead) {\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if (inputs.memory_per_job && !inputs.memory_overhead){\n    if(inputs.memory_per_job % 1000 == 0) {\n      return \"-Xmx\" + (inputs.memory_per_job/1000).toString() + \"G\"\n    }\n    else {\n      return \"-Xmx\" + Math.floor((inputs.memory_per_job/1000)).toString() + \"G\"\n    }\n  }\n  else if(!inputs.memory_per_job && inputs.memory_overhead){\n    return \"-Xmx15G\"\n  }\n  else {\n      return \"-Xmx15G\"\n  }\n}"
                },
                {
                    "position": 0,
                    "prefix": "--TMP_DIR",
                    "valueFrom": "${\n    if(inputs.temporary_directory)\n        return inputs.temporary_directory;\n      return runtime.tmpdir\n}"
                },
                {
                    "position": 0,
                    "prefix": "-O",
                    "valueFrom": "${\n    if(inputs.output){\n        return inputs.output;\n    } else if (inputs.output_map) {\n      return null;\n    } else {\n        return inputs.input.basename.replace(/.bam|.sam/, '_revertsam.bam');\n    }\n}"
                },
                {
                    "position": 0,
                    "prefix": "-OM",
                    "valueFrom": "${\n    if(inputs.output_map){\n        return inputs.output_map;\n    } else {\n        return null;\n    }\n}"
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 17000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gatk:4.1.8.0"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charles Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "gatk4",
                    "http://usefulinc.com/ns/doap#revision": "4.1.8.0"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#getbasecountsmultisample_1.2.5.cwl",
            "baseCommand": [
                "GetBaseCountsMultiSample"
            ],
            "inputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_per_job",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/memory_overhead",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Memory overhead per job in megabytes"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/number_of_threads",
                    "type": [
                        "null",
                        "int"
                    ]
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "doc": "Input bam file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/genotyping_bams_ids",
                    "type": [
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Input bam, sample identifier to be used for \"Tumor Sample Barcode\" for maf or Sample name in the header for vcf"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/filter_duplicate",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--filter_duplicate"
                    },
                    "doc": "Whether to filter reads that are marked as duplicate. 0=off, 1=on. Default 1"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fragment_count",
                    "type": "int",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fragment_count"
                    },
                    "doc": "Whether to output fragment read counts DPF/RDF/ADF. 0=off, 1=on. Default 0"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maf",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maf"
                    },
                    "doc": "Input variant file in TCGA maf format. --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/maq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--maq"
                    },
                    "doc": "Mapping quality threshold. Default 20"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/omaf",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--omaf"
                    },
                    "doc": "Output the result in maf format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/output",
                    "type": [
                        "null",
                        "string"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--output",
                        "valueFrom": "${\n    if (inputs.output) {\n        return inputs.output\n    } else if (inputs.genotyping_bams.length) {\n        return inputs.maf.basename.replace('.maf', '_fillout.maf')\n    } else {\n        return inputs.genotyping_bams.basename.replace('.bam', '_fillout.maf')\n    }\n}"
                    },
                    "doc": "Filename for output of raw fillout data in MAF/VCF format"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/ref_fasta",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--fasta"
                    },
                    "doc": "Input reference sequence file"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/vcf",
                    "type": [
                        "null",
                        "File"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--vcf"
                    },
                    "doc": "Input variant file in vcf-like format(the first 5 columns are used). --maf or --vcf need to be specified at least once. But --maf and --vcf are mutually exclusive"
                },
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/generic_counting",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--generic_counting"
                    },
                    "doc": "Use the newly implemented generic counting algorithm. Works better for complex variants. You may get different allele count result from the default counting algorithm"
                }
            ],
            "outputs": [
                {
                    "id": "#getbasecountsmultisample_1.2.5.cwl/fillout",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    if (inputs.output) {\n        return inputs.output\n    } else if (inputs.genotyping_bams.length) {\n        return inputs.maf.basename.replace('.maf', '_fillout.maf')\n    } else {\n        return inputs.genotyping_bams.basename.replace('.bam', '_fillout.maf')\n    }\n}"
                    }
                }
            ],
            "label": "getbasecountsmultisample_1.2.5",
            "arguments": [
                {
                    "position": 0,
                    "prefix": "",
                    "shellQuote": false,
                    "valueFrom": "$('--bam_fof bam_fof.tsv')\n"
                },
                {
                    "position": 0,
                    "prefix": "--thread",
                    "valueFrom": "$(runtime.cores)"
                }
            ],
            "requirements": [
                {
                    "class": "ShellCommandRequirement"
                },
                {
                    "class": "ResourceRequirement",
                    "ramMin": 16000,
                    "coresMin": 2
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/gbcms:1.2.5"
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entryname": "bam_fof.tsv",
                            "entry": "${\n  if (typeof(inputs.genotyping_bams_ids) == 'object') {\n      return inputs.genotyping_bams_ids.map(function(sid, i) {\n        return sid + \"\\t\" +\n          inputs.genotyping_bams[i].path\n      }).join(\"\\n\")\n  } else {\n      return inputs.genotyping_bams_ids + \"\\t\" + inputs.genotyping_bams.path + \"\\n\"\n  }\n}",
                            "writable": false
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:shahr2@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ronak Shah"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:johnsoni@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Ian Johnson"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "GetBaseCountsMultiSample",
                    "http://usefulinc.com/ns/doap#revision": "1.2.5"
                }
            ]
        },
        {
            "class": "CommandLineTool",
            "id": "#sequence_qc_0.2.3.cwl",
            "baseCommand": [
                "calculate_noise"
            ],
            "inputs": [
                {
                    "id": "#sequence_qc_0.2.3.cwl/reference",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--ref_fasta"
                    },
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "doc": "Path to reference fasta, containing all regions in bed_file"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/bam_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bam_file"
                    },
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "doc": "Path to BAM file for calculating noise  [required]"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/bed_file",
                    "type": "File",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--bed_file"
                    },
                    "doc": "Path to BED file containing regions over which to calculate noise  [required]"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sample_id",
                    "type": "string",
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--sample_id"
                    },
                    "doc": "Prefix to include in all output file names"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--threshold"
                    },
                    "doc": "Alt allele frequency past which to ignore positions from the calculation."
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--truncate"
                    },
                    "doc": "Whether to exclude trailing bases from reads that only partially overlap the bed file (0 or 1)"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min_mapq"
                    },
                    "doc": "Exclude reads with a lower mapping quality"
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "inputBinding": {
                        "position": 0,
                        "prefix": "--min_basq"
                    },
                    "doc": "Exclude bases with a lower base quality"
                }
            ],
            "outputs": [
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_pileup",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_pileup.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_noise_positions",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_positions.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_noise_by_substitution",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_by_substitution.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_noise_acgt",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_acgt.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_noise_n",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_n.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_noise_del",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise_del.tsv'\n}"
                    }
                },
                {
                    "id": "#sequence_qc_0.2.3.cwl/sequence_qc_figures",
                    "type": "File",
                    "outputBinding": {
                        "glob": "${\n    return inputs.sample_id + '_noise.html'\n}"
                    }
                }
            ],
            "requirements": [
                {
                    "class": "ResourceRequirement",
                    "ramMin": 8000,
                    "coresMin": 1
                },
                {
                    "class": "DockerRequirement",
                    "dockerPull": "ghcr.io/msk-access/sequence_qc:0.2.3"
                },
                {
                    "class": "InlineJavascriptRequirement"
                },
                {
                    "class": "EnvVarRequirement",
                    "envDef": [
                        {
                            "envValue": "en_US.utf-8",
                            "envName": "LANG"
                        },
                        {
                            "envValue": "en_US.utf-8",
                            "envName": "LC_ALL"
                        }
                    ]
                }
            ],
            "http://purl.org/dc/terms/contributor": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://purl.org/dc/terms/creator": [
                {
                    "class": "http://xmlns.com/foaf/0.1/Organization",
                    "http://xmlns.com/foaf/0.1/member": [
                        {
                            "class": "http://xmlns.com/foaf/0.1/Person",
                            "http://xmlns.com/foaf/0.1/mbox": "mailto:murphyc4@mskcc.org",
                            "http://xmlns.com/foaf/0.1/name": "Charlie Murphy"
                        }
                    ],
                    "http://xmlns.com/foaf/0.1/name": "Memorial Sloan Kettering Cancer Center"
                }
            ],
            "http://usefulinc.com/ns/doap#release": [
                {
                    "class": "http://usefulinc.com/ns/doap#Version",
                    "http://usefulinc.com/ns/doap#name": "sesquence_qc",
                    "http://usefulinc.com/ns/doap#revision": "0.2.3"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_collapsed_bam.cwl",
            "label": "qc_collapsed_bam",
            "inputs": [
                {
                    "id": "#qc_collapsed_bam.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 824.90625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1038.59375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1252.28125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/collapsed_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "collapsed_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2748.09375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/group_reads_by_umi_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "group_reads_by_umi_bam",
                    "doc": "Input BAM file generated by GroupReadByUmi.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2534.40625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/pool_a_bait_intervals",
                    "type": [
                        "null",
                        "File"
                    ],
                    "label": "pool_a_bait_intervals",
                    "doc": "Optional set of intervals over which to restrict analysis. [Optional].",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1359.125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/pool_b_bait_intervals",
                    "type": [
                        "null",
                        "File"
                    ],
                    "label": "pool_b_bait_intervals",
                    "doc": "Optional set of intervals over which to restrict analysis. [Optional].",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1145.4375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2107.03125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1572.8125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1679.65625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2641.25
                },
                {
                    "id": "#qc_collapsed_bam.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2213.875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2320.71875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2427.5625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 931.75
                },
                {
                    "id": "#qc_collapsed_bam.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1786.5
                },
                {
                    "id": "#qc_collapsed_bam.cwl/json_1",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2000.1875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 397.53125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/sample_name",
                    "type": "string",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 611.21875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 504.375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 718.0625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1893.34375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/bed_file",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": -5.7914533615112305,
                    "https://www.sevenbridges.com/y": 1468.1177978515625
                }
            ],
            "outputs": [
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2564.25
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_qc"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2243.71875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2350.5625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1923.1875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_family_size_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_family_size_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1709.5
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_umi_counts_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_umi_counts"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_umi_counts_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1495.8125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2457.40625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_qc"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2136.875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2030.03125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1816.34375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_family_size_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_family_size"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_family_size_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1602.65625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_umi_counts_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_umi_counts"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "fgbio_collect_duplex_seq_metrics_umi_counts_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1388.96875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_minor_csv",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_csv"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1679.65625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_minor_json",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_json"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1572.8125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_minor_plot",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_plot"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1465.96875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_minor_sites_plot",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_sites_plot"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1359.125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch_json",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_sexmismatch/biometrics_sexmismatch_json"
                    ],
                    "type": [
                        "null",
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1145.4375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch_csv",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_sexmismatch/biometrics_sexmismatch_csv"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1252.28125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 213.6875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 427.375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 641.0625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 854.75
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1068.4375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 106.84375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 320.53125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 534.21875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 747.90625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 961.59375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1175.28125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_major_plot",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1786.5
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_major_json",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 1893.34375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_major_csv",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1547.1123046875,
                    "https://www.sevenbridges.com/y": 2000.1875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_extract_pickle",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 3145.625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fillout_maf",
                    "outputSource": [
                        "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1282.125
                }
            ],
            "steps": [
                {
                    "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/input",
                            "source": [
                                "#qc_collapsed_bam.cwl/collapsed_bam"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/target_intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/bait_intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/reference",
                            "source": "#qc_collapsed_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_base_quality",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_coverage_cap",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1796.078125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/input",
                            "source": [
                                "#qc_collapsed_bam.cwl/collapsed_bam"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/target_intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/bait_intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/reference",
                            "source": "#qc_collapsed_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_base_quality",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_coverage_cap",
                            "source": "#qc_collapsed_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1986.921875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/input",
                            "source": "#qc_collapsed_bam.cwl/group_reads_by_umi_bam"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_a_bait_intervals"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_family_size"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_umi_counts"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_qc"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_0/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                        }
                    ],
                    "run": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl",
                    "label": "fgbio_collect_duplex_seq_metrics_1.2.0",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1435.390625
                },
                {
                    "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/input",
                            "source": "#qc_collapsed_bam.cwl/group_reads_by_umi_bam"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/intervals",
                            "source": "#qc_collapsed_bam.cwl/pool_b_bait_intervals"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_family_size"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_family_size"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_umi_counts"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_qc"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/fgbio_collect_duplex_seq_metrics_1_2_1/fgbio_collect_duplex_seq_metrics_duplex_umi_counts"
                        }
                    ],
                    "run": "#fgbio_collect_duplex_seq_metrics_1.2.0.cwl",
                    "label": "fgbio_collect_duplex_seq_metrics_1.2.0",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1258.546875
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_minor",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/minor_threshold",
                            "source": "#qc_collapsed_bam.cwl/minor_threshold"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/prefix",
                            "default": "collapsed",
                            "source": "#qc_collapsed_bam.cwl/prefix"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/plot",
                            "default": false,
                            "source": "#qc_collapsed_bam.cwl/plot"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/json",
                            "default": true,
                            "source": "#qc_collapsed_bam.cwl/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl_2",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2847.9375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/input",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/coverage_threshold",
                            "source": "#qc_collapsed_bam.cwl/coverage_threshold"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/prefix",
                            "default": "collapsed",
                            "source": "#qc_collapsed_bam.cwl/prefix"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/json",
                            "source": "#qc_collapsed_bam.cwl/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl_2",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2692.09375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/major_threshold",
                            "source": "#qc_collapsed_bam.cwl/major_threshold"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/prefix",
                            "source": "#qc_collapsed_bam.cwl/prefix"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/plot",
                            "source": "#qc_collapsed_bam.cwl/plot"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/json",
                            "source": "#qc_collapsed_bam.cwl/json_1"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_json"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_major_0_2_13/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl_2",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 3010.78125
                },
                {
                    "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/sample_bam",
                            "source": "#qc_collapsed_bam.cwl/collapsed_bam"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/sample_sex",
                            "source": "#qc_collapsed_bam.cwl/sample_sex"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/sample_group",
                            "source": "#qc_collapsed_bam.cwl/sample_group"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/sample_name",
                            "source": "#qc_collapsed_bam.cwl/sample_name"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/fafile",
                            "source": "#qc_collapsed_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/vcf_file",
                            "source": "#qc_collapsed_bam.cwl/vcf_file"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/bed_file",
                            "source": "#qc_collapsed_bam.cwl/bed_file"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                        }
                    ],
                    "run": "#biometrics_extract.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1612.234375
                },
                {
                    "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#qc_collapsed_bam.cwl/collapsed_bam"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#qc_collapsed_bam.cwl/sample_name"
                            ]
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/maf",
                            "source": "#qc_collapsed_bam.cwl/maf"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/output",
                            "source": "#qc_collapsed_bam.cwl/sample_name",
                            "valueFrom": "$(self + '_collapsed_hotspots_fillout.maf')"
                        },
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#qc_collapsed_bam.cwl/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_collapsed_bam.cwl/getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "getbasecountsmultisample_1.2.5",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1102.703125
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_duplex_bam.cwl",
            "label": "qc_duplex",
            "inputs": [
                {
                    "id": "#qc_duplex_bam.cwl/reference",
                    "type": "File",
                    "doc": "Path to reference fasta, containing all regions in bed_file",
                    "secondaryFiles": [
                        "^.fasta.fai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 903.75
                },
                {
                    "id": "#qc_duplex_bam.cwl/duplex_bam",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "duplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2399.5625
                },
                {
                    "id": "#qc_duplex_bam.cwl/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1331.125
                },
                {
                    "id": "#qc_duplex_bam.cwl/pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1437.96875
                },
                {
                    "id": "#qc_duplex_bam.cwl/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1117.4375
                },
                {
                    "id": "#qc_duplex_bam.cwl/pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1224.28125
                },
                {
                    "id": "#qc_duplex_bam.cwl/noise_sites_bed",
                    "type": "File",
                    "label": "noise_sites_bed",
                    "doc": "Path to BED file containing regions over which to calculate noise [required]",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1651.65625
                },
                {
                    "id": "#qc_duplex_bam.cwl/sample_name",
                    "type": [
                        "null",
                        "string",
                        {
                            "type": "array",
                            "items": "string"
                        }
                    ],
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 690.0625
                },
                {
                    "id": "#qc_duplex_bam.cwl/plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1544.8125
                },
                {
                    "id": "#qc_duplex_bam.cwl/json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1972.1875
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 476.375
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 369.53125
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 262.6875
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 155.84375
                },
                {
                    "id": "#qc_duplex_bam.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2079.03125
                },
                {
                    "id": "#qc_duplex_bam.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2185.875
                },
                {
                    "id": "#qc_duplex_bam.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2292.71875
                },
                {
                    "id": "#qc_duplex_bam.cwl/prefix",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1010.59375
                },
                {
                    "id": "#qc_duplex_bam.cwl/major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1758.5
                },
                {
                    "id": "#qc_duplex_bam.cwl/vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 49
                },
                {
                    "id": "#qc_duplex_bam.cwl/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 583.21875
                },
                {
                    "id": "#qc_duplex_bam.cwl/sample_group",
                    "type": [
                        "null",
                        "string"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 796.90625
                },
                {
                    "id": "#qc_duplex_bam.cwl/maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1865.34375
                }
            ],
            "outputs": [
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_noise_positions",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_positions"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 106.84375
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_noise_n",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_n"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 213.6875
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_noise_del",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_del"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 320.53125
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_noise_acgt",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_acgt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 534.21875
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_figures",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_figures"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 641.0625
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1816.34375
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1602.65625
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1388.96875
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1175.28125
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 961.59375
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 747.90625
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1923.1875
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1709.5
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1495.8125
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1282.125
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 1068.4375
                },
                {
                    "id": "#qc_duplex_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 854.75
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_pileup",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_pileup"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#qc_duplex_bam.cwl/sequence_qc_noise_by_substitution",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_by_substitution"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 427.375
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_major_plot",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1331.125
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_major_json",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1437.96875
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_major_csv",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1544.8125
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_extract_pickle",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2448.5625
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_minor_sites_plot",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_sites_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 903.75
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_minor_plot",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_plot"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1010.59375
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_minor_json",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_json"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1117.4375
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_minor_csv",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_csv"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1495.5341796875,
                    "https://www.sevenbridges.com/y": 1224.28125
                },
                {
                    "id": "#qc_duplex_bam.cwl/fillout_maf",
                    "outputSource": [
                        "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/fillout"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2030.03125
                }
            ],
            "steps": [
                {
                    "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/input",
                            "source": [
                                "#qc_duplex_bam.cwl/duplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/target_intervals",
                            "source": "#qc_duplex_bam.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/bait_intervals",
                            "source": "#qc_duplex_bam.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/reference",
                            "source": "#qc_duplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_base_quality",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_coverage_cap",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1563.96875
                },
                {
                    "id": "#qc_duplex_bam.cwl/calculate_noise",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/reference",
                            "source": "#qc_duplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/bam_file",
                            "source": "#qc_duplex_bam.cwl/duplex_bam"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/bed_file",
                            "source": "#qc_duplex_bam.cwl/noise_sites_bed"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sample_id",
                            "source": "#qc_duplex_bam.cwl/sample_name"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/threshold",
                            "source": "#qc_duplex_bam.cwl/sequence_qc_threshold"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/truncate",
                            "source": "#qc_duplex_bam.cwl/sequence_qc_truncate"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/min_mapq",
                            "source": "#qc_duplex_bam.cwl/sequence_qc_min_mapq"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/min_basq",
                            "source": "#qc_duplex_bam.cwl/sequence_qc_min_basq"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_pileup"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_positions"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_by_substitution"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_acgt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_n"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_noise_del"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/calculate_noise/sequence_qc_figures"
                        }
                    ],
                    "run": "#sequence_qc_0.2.3.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 998.4375
                },
                {
                    "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/input",
                            "source": [
                                "#qc_duplex_bam.cwl/duplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/target_intervals",
                            "source": "#qc_duplex_bam.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/bait_intervals",
                            "source": "#qc_duplex_bam.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/reference",
                            "source": "#qc_duplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_base_quality",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_coverage_cap",
                            "source": "#qc_duplex_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1373.125
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/major_threshold",
                            "source": "#qc_duplex_bam.cwl/major_threshold"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/prefix",
                            "source": "#qc_duplex_bam.cwl/prefix"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/plot",
                            "source": "#qc_duplex_bam.cwl/plot"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/json",
                            "source": "#qc_duplex_bam.cwl/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_json"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_major_0_2_13/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl_2",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2313.71875
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/sample_bam",
                            "source": "#qc_duplex_bam.cwl/duplex_bam"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/sample_sex",
                            "source": "#qc_duplex_bam.cwl/sample_sex"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/sample_group",
                            "source": "#qc_duplex_bam.cwl/sample_group"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/sample_name",
                            "source": "#qc_duplex_bam.cwl/sample_name"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/fafile",
                            "source": "#qc_duplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/vcf_file",
                            "source": "#qc_duplex_bam.cwl/vcf_file"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/min_coverage",
                            "default": 200
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                        }
                    ],
                    "run": "#biometrics_extract.cwl",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 1189.28125
                },
                {
                    "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/input",
                            "linkMerge": "merge_nested",
                            "source": [
                                "#qc_duplex_bam.cwl/biometrics_extract_0_2_13/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/prefix",
                            "source": "#qc_duplex_bam.cwl/prefix"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/plot",
                            "source": "#qc_duplex_bam.cwl/plot"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/json",
                            "source": "#qc_duplex_bam.cwl/json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/biometrics_minor_0_2_13/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl_2",
                    "https://www.sevenbridges.com/x": 982.1435546875,
                    "https://www.sevenbridges.com/y": 2157.875
                },
                {
                    "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5",
                    "in": [
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/genotyping_bams",
                            "source": [
                                "#qc_duplex_bam.cwl/duplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/genotyping_bams_ids",
                            "source": [
                                "#qc_duplex_bam.cwl/sample_name"
                            ]
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/filter_duplicate",
                            "default": 0
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/fragment_count",
                            "default": 1
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/maf",
                            "source": "#qc_duplex_bam.cwl/maf"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/output",
                            "source": "#qc_duplex_bam.cwl/sample_name",
                            "valueFrom": "$(self + '_duplex_hotspots_fillout.maf')"
                        },
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/ref_fasta",
                            "source": "#qc_duplex_bam.cwl/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_duplex_bam.cwl/getbasecountsmultisample_1_2_5/fillout"
                        }
                    ],
                    "run": "#getbasecountsmultisample_1.2.5.cwl",
                    "label": "getbasecountsmultisample_1.2.5",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 814.59375
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_simplex_bam.cwl",
            "label": "qc_simplex_bam",
            "inputs": [
                {
                    "id": "#qc_simplex_bam.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": -573,
                    "https://www.sevenbridges.com/y": 247.2935333251953
                },
                {
                    "id": "#qc_simplex_bam.cwl/simplex_bam",
                    "type": "File",
                    "label": "simplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": -570.2189331054688,
                    "https://www.sevenbridges.com/y": 376.736328125
                },
                {
                    "id": "#qc_simplex_bam.cwl/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": -583.1691284179688,
                    "https://www.sevenbridges.com/y": -23.069652557373047
                },
                {
                    "id": "#qc_simplex_bam.cwl/pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": -579.8407592773438,
                    "https://www.sevenbridges.com/y": 105.95523071289062
                },
                {
                    "id": "#qc_simplex_bam.cwl/pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": -583.9046020507812,
                    "https://www.sevenbridges.com/y": -163.9043731689453
                },
                {
                    "id": "#qc_simplex_bam.cwl/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": -581.4170532226562,
                    "https://www.sevenbridges.com/y": -288.2825012207031
                },
                {
                    "id": "#qc_simplex_bam.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -585.7700805664062,
                    "https://www.sevenbridges.com/y": -414.1761779785156
                },
                {
                    "id": "#qc_simplex_bam.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -590.94140625,
                    "https://www.sevenbridges.com/y": -539.5800170898438
                },
                {
                    "id": "#qc_simplex_bam.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": -595.156005859375,
                    "https://www.sevenbridges.com/y": -670.54931640625
                }
            ],
            "outputs": [
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 429.216064453125,
                    "https://www.sevenbridges.com/y": 559.75537109375
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 420.07769775390625,
                    "https://www.sevenbridges.com/y": 442.26190185546875
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 427.91058349609375,
                    "https://www.sevenbridges.com/y": 323.46295166015625
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 427.91058349609375,
                    "https://www.sevenbridges.com/y": 204.66400146484375
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": "File",
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 422.68865966796875,
                    "https://www.sevenbridges.com/y": 80.64311218261719
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 430.52154541015625,
                    "https://www.sevenbridges.com/y": -34.2393913269043
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 420.07769775390625,
                    "https://www.sevenbridges.com/y": -155.64930725097656
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 417.46673583984375,
                    "https://www.sevenbridges.com/y": -274.4482727050781
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 414.85577392578125,
                    "https://www.sevenbridges.com/y": -389.3307800292969
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 409.9451599121094,
                    "https://www.sevenbridges.com/y": -498.08355712890625
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": "File",
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 410.9393005371094,
                    "https://www.sevenbridges.com/y": -621.7067260742188
                },
                {
                    "id": "#qc_simplex_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": "File",
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 400.4954528808594,
                    "https://www.sevenbridges.com/y": -773.1427612304688
                }
            ],
            "steps": [
                {
                    "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/input",
                            "source": [
                                "#qc_simplex_bam.cwl/simplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/target_intervals",
                            "source": "#qc_simplex_bam.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/bait_intervals",
                            "source": "#qc_simplex_bam.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/reference",
                            "source": "#qc_simplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_base_quality",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/hsmetrics_coverage_cap",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": -114.38903045654297,
                    "https://www.sevenbridges.com/y": -295.4621276855469
                },
                {
                    "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/input",
                            "source": [
                                "#qc_simplex_bam.cwl/simplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/target_intervals",
                            "source": "#qc_simplex_bam.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/bait_intervals",
                            "source": "#qc_simplex_bam.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/reference",
                            "source": "#qc_simplex_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_base_quality",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/hsmetrics_coverage_cap",
                            "source": "#qc_simplex_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_simplex_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": -116.60113525390625,
                    "https://www.sevenbridges.com/y": 139.5
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_uncollapsed_bam.cwl",
            "label": "qc_uncollapsed_bam",
            "inputs": [
                {
                    "id": "#qc_uncollapsed_bam.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 267.2265625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/uncollapsed_bam_base_recal",
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "uncollapsed_bam_base_recal",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 160.3359375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 374.1171875
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 481.0078125
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 694.7890625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 587.8984375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 801.6796875
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 908.5703125
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1015.4609375
                }
            ],
            "outputs": [
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 1068.90625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 855.125
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 641.34375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 427.5625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 213.78125
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_b",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_b",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_alignment_summary_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 1175.796875
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 962.015625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 748.234375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_hs_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_hs_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 534.453125
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 320.671875
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_collect_insert_size_metrics_txt_pool_a",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_collect_insert_size_metrics_txt_pool_a",
                    "https://www.sevenbridges.com/x": 1369.4512939453125,
                    "https://www.sevenbridges.com/y": 106.890625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_output_base_recal",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_output"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_mean_quality_by_cycle_output_base_recal",
                    "https://www.sevenbridges.com/x": 738.7452392578125,
                    "https://www.sevenbridges.com/y": 343.5625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_chart_output_base_recal",
                    "outputSource": [
                        "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_chart_output"
                    ],
                    "type": [
                        "File",
                        {
                            "type": "array",
                            "items": "File"
                        }
                    ],
                    "label": "gatk_mean_quality_by_cycle_chart_output_base_recal",
                    "https://www.sevenbridges.com/x": 738.7452392578125,
                    "https://www.sevenbridges.com/y": 450.453125
                }
            ],
            "steps": [
                {
                    "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/input",
                            "source": [
                                "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/gatk_revert_sam_output"
                            ]
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/target_intervals",
                            "source": "#qc_uncollapsed_bam.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/bait_intervals",
                            "source": "#qc_uncollapsed_bam.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/reference",
                            "source": "#qc_uncollapsed_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_minimum_base_quality",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/hsmetrics_coverage_cap",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_a/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_a",
                    "https://www.sevenbridges.com/x": 738.7452392578125,
                    "https://www.sevenbridges.com/y": 790.234375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/input",
                            "source": [
                                "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/gatk_revert_sam_output"
                            ]
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/target_intervals",
                            "source": "#qc_uncollapsed_bam.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/bait_intervals",
                            "source": "#qc_uncollapsed_bam.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/reference",
                            "source": "#qc_uncollapsed_bam.cwl/reference"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_minimum_base_quality",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/hsmetrics_coverage_cap",
                            "source": "#qc_uncollapsed_bam.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_histogram_pdf"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_insert_size_metrics_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_base_coverage_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_hs_metrics_per_target_coverage_txt"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/bam_qc_stats_pool_b/gatk_collect_alignment_summary_metrics_txt"
                        }
                    ],
                    "run": "#bam_qc_stats.cwl",
                    "label": "bam_qc_stats_pool_b",
                    "https://www.sevenbridges.com/x": 738.7452392578125,
                    "https://www.sevenbridges.com/y": 599.34375
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1",
                    "in": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/input",
                            "source": "#qc_uncollapsed_bam.cwl/uncollapsed_bam_base_recal"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/reference",
                            "source": "#qc_uncollapsed_bam.cwl/reference"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_output"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_mean_quality_by_cycle_4_1_8_1/gatk_mean_quality_by_cycle_chart_output"
                        }
                    ],
                    "run": "#gatk_mean_quality_by_cycle_4.1.8.0.cwl",
                    "label": "GATK-MeanQualityByCycle_base_recal",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 701.7890625
                },
                {
                    "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0",
                    "in": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/input",
                            "source": "#qc_uncollapsed_bam.cwl/uncollapsed_bam_base_recal"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/remove_alignment_information",
                            "default": "false"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/remove_duplicate_information",
                            "default": "true"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/restore_hardclips",
                            "default": "false"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/restore_original_qualities",
                            "default": "false"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/sort_order",
                            "default": "unsorted"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/validation_stringency",
                            "default": "SILENT"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/gatk_revert_sam_output"
                        },
                        {
                            "id": "#qc_uncollapsed_bam.cwl/gatk_revert_sam_4_1_8_0/gatk_revert_sam_output_map"
                        }
                    ],
                    "run": "#gatk_revert_sam_4.1.8.0.cwl",
                    "label": "GATK-RevertSam",
                    "https://www.sevenbridges.com/x": 351.4375,
                    "https://www.sevenbridges.com/y": 580.8984375
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_aggregator.cwl",
            "label": "qc_aggregator",
            "inputs": [
                {
                    "id": "#qc_aggregator.cwl/duplex_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "label": "duplex_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.546875
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.6875
                },
                {
                    "id": "#qc_aggregator.cwl/biometrics_json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_json",
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2454.3125
                },
                {
                    "id": "#qc_aggregator.cwl/biometrics_plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_plot",
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2347.59375
                },
                {
                    "id": "#qc_aggregator.cwl/simplex_bam_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.109375
                },
                {
                    "id": "#qc_aggregator.cwl/simplex_bam_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "simplex_bam_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.40625
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_bam_sequence_qc_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_sequence_qc_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.796875
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.09375
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "duplex_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.390625
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1920.78125
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1814.078125
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_bam_duplex_metrics_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2134.1875
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_bam_duplex_metrics_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "collapsed_bam_duplex_metrics_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2027.484375
                },
                {
                    "id": "#qc_aggregator.cwl/gatk_mean_quality_by_cycle_recal_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "gatk_mean_quality_by_cycle_recal_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.828125
                },
                {
                    "id": "#qc_aggregator.cwl/uncollapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#qc_aggregator.cwl/uncollapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "label": "uncollapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.703125
                },
                {
                    "id": "#qc_aggregator.cwl/biometrics_threads",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "biometrics_threads",
                    "doc": "Number of threads to use.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2240.890625
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.96875
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.25
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "label": "collapsed_extraction_files",
                    "doc": "Can be one of three types: (1) path to a CSV file containing sample information (one per line). For example: sample_name,sample_bam,sample_type,sample_sex,sample_group. (2) Path to a '*.pk' file that was produced by the 'extract' tool. (3) Name of the sample to analyze; this assumes there is a file named '{sample_name}.pk' in your database directory. Can be specified more than once.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.5
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_discordance_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_discordance_threshold",
                    "doc": "Discordance values less than this are regarded as matching samples. (default: 0.05)",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1600.640625
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1493.921875
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1387.203125
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "collapsed_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1707.359375
                }
            ],
            "outputs": [
                {
                    "id": "#qc_aggregator.cwl/directory_1",
                    "outputSource": [
                        "#qc_aggregator.cwl/final_aggregate/directory"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1214.305419921875,
                    "https://www.sevenbridges.com/y": 1227.1484375
                }
            ],
            "steps": [
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_genotype",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/input",
                            "source": [
                                "#qc_aggregator.cwl/duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/discordance_threshold",
                            "source": "#qc_aggregator.cwl/duplex_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/prefix",
                            "default": "duplex"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/threads",
                            "source": "#qc_aggregator.cwl/biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1004.078125
                },
                {
                    "id": "#qc_aggregator.cwl/aggregate",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/aggregate/files",
                            "source": [
                                "#qc_aggregator.cwl/simplex_bam_pool_a_dir",
                                "#qc_aggregator.cwl/simplex_bam_pool_b_dir",
                                "#qc_aggregator.cwl/duplex_bam_stats_pool_a_dir",
                                "#qc_aggregator.cwl/duplex_bam_stats_pool_b_dir",
                                "#qc_aggregator.cwl/collapsed_bam_stats_pool_a_dir",
                                "#qc_aggregator.cwl/collapsed_bam_stats_pool_b_dir",
                                "#qc_aggregator.cwl/collapsed_bam_duplex_metrics_pool_a_dir",
                                "#qc_aggregator.cwl/collapsed_bam_duplex_metrics_pool_b_dir",
                                "#qc_aggregator.cwl/gatk_mean_quality_by_cycle_recal_dir",
                                "#qc_aggregator.cwl/uncollapsed_bam_stats_pool_b_dir",
                                "#qc_aggregator.cwl/uncollapsed_bam_stats_pool_a_dir",
                                "#qc_aggregator.cwl/duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/aggregate/output_directory_name",
                            "default": [
                                "simplex_bam_pool_a_dir",
                                "simplex_bam_pool_b_dir",
                                "duplex_bam_stats_pool_a_dir",
                                "duplex_bam_stats_pool_b_dir",
                                "collapsed_bam_stats_pool_a_dir",
                                "collapsed_bam_stats_pool_b_dir",
                                "collapsed_bam_duplex_metrics_pool_a_dir",
                                "collapsed_bam_duplex_metrics_pool_b_dir",
                                "gatk_mean_quality_by_cycle_recal_dir",
                                "uncollapsed_bam_stats_pool_b_dir",
                                "uncollapsed_bam_stats_pool_a_dir",
                                "duplex_bam_sequence_qc_dir"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/aggregate/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "aggregate",
                    "scatter": [
                        "#qc_aggregator.cwl/aggregate/files",
                        "#qc_aggregator.cwl/aggregate/output_directory_name"
                    ],
                    "scatterMethod": "dotproduct",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1733.6875
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_major",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/input",
                            "source": [
                                "#qc_aggregator.cwl/duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/major_threshold",
                            "source": "#qc_aggregator.cwl/duplex_biometrics_major_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/prefix",
                            "default": "duplex"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "duplex_biometrics_major",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 848.34375
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_minor",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/input",
                            "source": [
                                "#qc_aggregator.cwl/duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/minor_threshold",
                            "source": "#qc_aggregator.cwl/duplex_biometrics_minor_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/prefix",
                            "default": "duplex"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "duplex_biometrics_minor",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 699.625
                },
                {
                    "id": "#qc_aggregator.cwl/duplex_biometrics_agg",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_agg/files",
                            "source": [
                                "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_plot_input",
                                "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_comparisons",
                                "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#qc_aggregator.cwl/duplex_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_plot",
                                "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_json",
                                "#qc_aggregator.cwl/duplex_biometrics_major/biometrics_major_csv",
                                "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_sites_plot",
                                "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_plot",
                                "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_json",
                                "#qc_aggregator.cwl/duplex_biometrics_minor/biometrics_minor_csv"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_agg/output_directory_name",
                            "default": "duplex_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/duplex_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_biometrics_agg",
                    "https://www.sevenbridges.com/x": 750.1968994140625,
                    "https://www.sevenbridges.com/y": 1131.8909912109375
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/input",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/discordance_threshold",
                            "source": "#qc_aggregator.cwl/collapsed_biometrics_discordance_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/prefix",
                            "default": "collapsed"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/threads",
                            "source": "#qc_aggregator.cwl/biometrics_threads"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_comparisons"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_cluster_input"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_plot_input"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_plot_input_database"
                        }
                    ],
                    "run": "#biometrics_genotype.cwl",
                    "label": "collapsed_biometrics_genotype",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1598.953125
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_major",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/input",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/major_threshold",
                            "default": 0.6,
                            "source": "#qc_aggregator.cwl/collapsed_biometrics_major_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/prefix",
                            "default": "collapsed"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_plot"
                        }
                    ],
                    "run": "#biometrics_major.cwl",
                    "label": "collapsed_biometrics_major",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1443.21875
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_minor",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/input",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/minor_threshold",
                            "default": 0.002,
                            "source": "#qc_aggregator.cwl/collapsed_biometrics_minor_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/prefix",
                            "default": "collapsed"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/plot",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/no_db_comparison",
                            "default": false
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_sites_plot"
                        }
                    ],
                    "run": "#biometrics_minor.cwl",
                    "label": "collapsed_biometrics_minor",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1294.5
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/input",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/coverage_threshold",
                            "source": "#qc_aggregator.cwl/collapsed_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/prefix",
                            "default": "collapsed"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/json",
                            "default": true,
                            "source": "#qc_aggregator.cwl/biometrics_json"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json"
                        }
                    ],
                    "run": "#biometrics_sexmismatch.cwl",
                    "label": "collapsed_biometrics_sexmismatch",
                    "https://www.sevenbridges.com/x": 410.1875,
                    "https://www.sevenbridges.com/y": 1152.796875
                },
                {
                    "id": "#qc_aggregator.cwl/collapsed_biometrics_agg",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_agg/files",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_plot_input_database",
                                "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_plot_input",
                                "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_comparisons",
                                "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_cluster_input_database",
                                "#qc_aggregator.cwl/collapsed_biometrics_genotype/biometrics_genotype_cluster_input",
                                "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_plot",
                                "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_json",
                                "#qc_aggregator.cwl/collapsed_biometrics_major/biometrics_major_csv",
                                "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_sites_plot",
                                "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_plot",
                                "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_json",
                                "#qc_aggregator.cwl/collapsed_biometrics_minor/biometrics_minor_csv",
                                "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/biometrics_sexmismatch_json",
                                "#qc_aggregator.cwl/collapsed_biometrics_sexmismatch/biometrics_sexmismatch_csv"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_agg/output_directory_name",
                            "default": "collapsed_biometrics_output"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/collapsed_biometrics_agg/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_biometrics_agg",
                    "https://www.sevenbridges.com/x": 737.106201171875,
                    "https://www.sevenbridges.com/y": 1268.7340087890625
                },
                {
                    "id": "#qc_aggregator.cwl/final_aggregate",
                    "in": [
                        {
                            "id": "#qc_aggregator.cwl/final_aggregate/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_aggregator.cwl/collapsed_biometrics_agg/directory",
                                "#qc_aggregator.cwl/duplex_biometrics_agg/directory",
                                "#qc_aggregator.cwl/aggregate/directory"
                            ]
                        },
                        {
                            "id": "#qc_aggregator.cwl/final_aggregate/output_directory_name",
                            "default": "all_qc_files"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator.cwl/final_aggregate/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "final_aggregate",
                    "https://www.sevenbridges.com/x": 1054.649169921875,
                    "https://www.sevenbridges.com/y": 1227.1484375
                }
            ],
            "requirements": [
                {
                    "class": "ScatterFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                }
            ]
        },
        {
            "class": "Workflow",
            "id": "#qc_generator.cwl",
            "label": "qc_generator",
            "inputs": [
                {
                    "id": "#qc_generator.cwl/reference",
                    "type": "File",
                    "secondaryFiles": [
                        "^.fasta.fai",
                        "^.dict"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.375
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam",
                    "type": "File",
                    "label": "duplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2241.140625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam",
                    "type": "File",
                    "label": "collapsed_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2561.296875
                },
                {
                    "id": "#qc_generator.cwl/group_reads_by_umi_bam",
                    "type": "File",
                    "label": "group_reads_by_umi_bam",
                    "doc": "Input BAM file generated by GroupReadByUmi.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2027.6640625
                },
                {
                    "id": "#qc_generator.cwl/uncollapsed_bam_base_recal",
                    "type": "File",
                    "label": "uncollapsed_bam_base_recal",
                    "doc": "An aligned SAM or BAM file.  Required.",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.703125
                },
                {
                    "id": "#qc_generator.cwl/pool_b_target_intervals",
                    "type": "File",
                    "label": "pool_b_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.1015625
                },
                {
                    "id": "#qc_generator.cwl/pool_b_bait_intervals",
                    "type": "File",
                    "label": "pool_b_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.828125
                },
                {
                    "id": "#qc_generator.cwl/pool_a_target_intervals",
                    "type": "File",
                    "label": "pool_a_target_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.5546875
                },
                {
                    "id": "#qc_generator.cwl/pool_a_bait_intervals",
                    "type": "File",
                    "label": "pool_a_bait_intervals",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1387.28125
                },
                {
                    "id": "#qc_generator.cwl/noise_sites_bed",
                    "type": "File",
                    "label": "noise_sites_bed",
                    "doc": "Path to BED file containing regions over which to calculate noise [required]",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1493.984375
                },
                {
                    "id": "#qc_generator.cwl/sample_sex",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Expected sample sex (i.e. M or F).",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.921875
                },
                {
                    "id": "#qc_generator.cwl/sample_name",
                    "type": [
                        "null",
                        "string"
                    ],
                    "doc": "Sample name. If not specified, sample name is automatically figured out from the BAM file.",
                    "https://www.sevenbridges.com/x": 386.90625,
                    "https://www.sevenbridges.com/y": 578.96875
                },
                {
                    "id": "#qc_generator.cwl/sample_group",
                    "type": "string",
                    "doc": "The sample group (e.g. the sample patient ID).",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.6484375
                },
                {
                    "id": "#qc_generator.cwl/simplex_bam",
                    "type": "File",
                    "label": "simplex_bam",
                    "secondaryFiles": [
                        "^.bai"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.40625
                },
                {
                    "id": "#qc_generator.cwl/biometrics_plot",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_plot",
                    "doc": "Also output plots of the data.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2668
                },
                {
                    "id": "#qc_generator.cwl/duplex_biometrics_major_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "duplex_biometrics_major_threshold",
                    "doc": "Major contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2134.4140625
                },
                {
                    "id": "#qc_generator.cwl/biometrics_json",
                    "type": [
                        "null",
                        "boolean"
                    ],
                    "label": "biometrics_json",
                    "doc": "Also output data in JSON format.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2774.7265625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_biometrics_minor_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "label": "collapsed_biometrics_minor_threshold",
                    "doc": "Minor contamination threshold for bad sample.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2347.84375
                },
                {
                    "id": "#qc_generator.cwl/collapsed_biometrics_coverage_threshold",
                    "type": [
                        "null",
                        "int"
                    ],
                    "label": "collapsed_biometrics_coverage_threshold",
                    "doc": "Samples with Y chromosome above this value will be considered male.",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 2454.5703125
                },
                {
                    "id": "#qc_generator.cwl/sequence_qc_min_basq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.21875
                },
                {
                    "id": "#qc_generator.cwl/sequence_qc_min_mapq",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.515625
                },
                {
                    "id": "#qc_generator.cwl/sequence_qc_threshold",
                    "type": [
                        "null",
                        "float"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.8125
                },
                {
                    "id": "#qc_generator.cwl/sequence_qc_truncate",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.109375
                },
                {
                    "id": "#qc_generator.cwl/hsmetrics_minimum_mapping_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1600.7109375
                },
                {
                    "id": "#qc_generator.cwl/hsmetrics_minimum_base_quality",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1707.4609375
                },
                {
                    "id": "#qc_generator.cwl/hsmetrics_coverage_cap",
                    "type": [
                        "null",
                        "int"
                    ],
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1814.2109375
                },
                {
                    "id": "#qc_generator.cwl/vcf_file",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 0
                },
                {
                    "id": "#qc_generator.cwl/hotspots_maf",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1920.9375
                }
            ],
            "outputs": [
                {
                    "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a_dir",
                    "outputSource": [
                        "#qc_generator.cwl/uncollapsed_bam_stats_pool_a/directory"
                    ],
                    "type": "Directory",
                    "label": "uncollapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 800.484375
                },
                {
                    "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b_dir",
                    "outputSource": [
                        "#qc_generator.cwl/uncollapsed_bam_stats_pool_b/directory"
                    ],
                    "type": "Directory",
                    "label": "uncollapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 693.78125
                },
                {
                    "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal_dir",
                    "outputSource": [
                        "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal/directory"
                    ],
                    "type": "Directory",
                    "label": "gatk_mean_quality_by_cycle_recal_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1120.6171875
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_biometrics_dir",
                    "outputSource": [
                        "#qc_generator.cwl/collapsed_bam_biometrics/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_biometrics_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 2080.96875
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b_dir",
                    "outputSource": [
                        "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_duplex_metrics_pool_b_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1867.5625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a_dir",
                    "outputSource": [
                        "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_duplex_metrics_pool_a_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1974.265625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b_dir",
                    "outputSource": [
                        "#qc_generator.cwl/collapsed_bam_stats_pool_b/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1654.15625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a_dir",
                    "outputSource": [
                        "#qc_generator.cwl/collapsed_bam_stats_pool_a/directory"
                    ],
                    "type": "Directory",
                    "label": "collapsed_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1760.859375
                },
                {
                    "id": "#qc_generator.cwl/simplex_bam_pool_a_dir",
                    "outputSource": [
                        "#qc_generator.cwl/simplex_bam_pool_a/directory"
                    ],
                    "type": "Directory",
                    "label": "simplex_bam_pool_a_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1013.890625
                },
                {
                    "id": "#qc_generator.cwl/simplex_bam_pool_b_dir",
                    "outputSource": [
                        "#qc_generator.cwl/simplex_bam_pool_b/directory"
                    ],
                    "type": "Directory",
                    "label": "simplex_bam_pool_b_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 907.1875
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_sequence_qc_dir",
                    "outputSource": [
                        "#qc_generator.cwl/duplex_bam_sequence_qc/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_sequence_qc_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1440.75
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_stats_pool_a_dir",
                    "outputSource": [
                        "#qc_generator.cwl/duplex_bam_stats_pool_a/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_stats_pool_a_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1334.046875
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_stats_pool_b_dir",
                    "outputSource": [
                        "#qc_generator.cwl/duplex_bam_stats_pool_b/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_stats_pool_b_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1227.34375
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_biometrics_dir",
                    "outputSource": [
                        "#qc_generator.cwl/duplex_bam_biometrics/directory"
                    ],
                    "type": "Directory",
                    "label": "duplex_bam_biometrics_dir",
                    "https://www.sevenbridges.com/x": 1791.763671875,
                    "https://www.sevenbridges.com/y": 1547.453125
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_genotyping_maf",
                    "outputSource": [
                        "#qc_generator.cwl/qc_duplex_bam/fillout_maf"
                    ],
                    "type": "File",
                    "label": "duplex_bam_genotyping_maf",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1447.7265625
                },
                {
                    "id": "#qc_generator.cwl/duplex_biometrics_extract_pickle",
                    "outputSource": [
                        "#qc_generator.cwl/qc_duplex_bam/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 978.890625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_biometrics_extract_pickle",
                    "outputSource": [
                        "#qc_generator.cwl/qc_collapsed_bam/biometrics_extract_pickle"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1675.15625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_genotyping_maf",
                    "outputSource": [
                        "#qc_generator.cwl/qc_collapsed_bam/fillout_maf"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 2023.2890625
                }
            ],
            "steps": [
                {
                    "id": "#qc_generator.cwl/qc_collapsed_bam",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/reference",
                            "source": "#qc_generator.cwl/reference"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/pool_b_target_intervals",
                            "source": "#qc_generator.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/pool_a_target_intervals",
                            "source": "#qc_generator.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/collapsed_bam",
                            "source": [
                                "#qc_generator.cwl/collapsed_bam"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/group_reads_by_umi_bam",
                            "source": [
                                "#qc_generator.cwl/group_reads_by_umi_bam"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/pool_a_bait_intervals",
                            "source": "#qc_generator.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/pool_b_bait_intervals",
                            "source": "#qc_generator.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/json",
                            "source": "#qc_generator.cwl/biometrics_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/plot",
                            "source": "#qc_generator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/minor_threshold",
                            "source": "#qc_generator.cwl/collapsed_biometrics_minor_threshold"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/coverage_threshold",
                            "source": "#qc_generator.cwl/collapsed_biometrics_coverage_threshold"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/hsmetrics_minimum_base_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/hsmetrics_coverage_cap",
                            "source": "#qc_generator.cwl/hsmetrics_coverage_cap"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/vcf_file",
                            "source": "#qc_generator.cwl/vcf_file"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/sample_name",
                            "source": "#qc_generator.cwl/sample_name"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/sample_sex",
                            "source": "#qc_generator.cwl/sample_sex"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/sample_group",
                            "source": "#qc_generator.cwl/sample_group"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/maf",
                            "source": "#qc_generator.cwl/hotspots_maf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_sites_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_csv"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/biometrics_extract_pickle"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_collapsed_bam/fillout_maf"
                        }
                    ],
                    "run": "#qc_collapsed_bam.cwl",
                    "label": "qc_collapsed_bam",
                    "https://www.sevenbridges.com/x": 386.90625,
                    "https://www.sevenbridges.com/y": 1957.78125
                },
                {
                    "id": "#qc_generator.cwl/qc_uncollapsed_bam",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/reference",
                            "source": "#qc_generator.cwl/reference"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/uncollapsed_bam_base_recal",
                            "source": [
                                "#qc_generator.cwl/uncollapsed_bam_base_recal"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/pool_b_target_intervals",
                            "source": "#qc_generator.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/pool_b_bait_intervals",
                            "source": "#qc_generator.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/pool_a_bait_intervals",
                            "source": "#qc_generator.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/pool_a_target_intervals",
                            "source": "#qc_generator.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/hsmetrics_minimum_base_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/hsmetrics_coverage_cap",
                            "source": "#qc_generator.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_mean_quality_by_cycle_output_base_recal"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_uncollapsed_bam/gatk_mean_quality_by_cycle_chart_output_base_recal"
                        }
                    ],
                    "run": "#qc_uncollapsed_bam.cwl",
                    "label": "qc_uncollapsed_bam",
                    "https://www.sevenbridges.com/x": 386.90625,
                    "https://www.sevenbridges.com/y": 776.671875
                },
                {
                    "id": "#qc_generator.cwl/qc_duplex_bam",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/reference",
                            "source": "#qc_generator.cwl/reference"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/duplex_bam",
                            "source": [
                                "#qc_generator.cwl/duplex_bam"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/pool_a_target_intervals",
                            "source": "#qc_generator.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/pool_a_bait_intervals",
                            "source": "#qc_generator.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/pool_b_target_intervals",
                            "source": "#qc_generator.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/pool_b_bait_intervals",
                            "source": "#qc_generator.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/noise_sites_bed",
                            "source": "#qc_generator.cwl/noise_sites_bed"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sample_name",
                            "source": [
                                "#qc_generator.cwl/sample_name"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/plot",
                            "source": "#qc_generator.cwl/biometrics_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/json",
                            "source": "#qc_generator.cwl/biometrics_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_min_basq",
                            "source": "#qc_generator.cwl/sequence_qc_min_basq"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_min_mapq",
                            "source": "#qc_generator.cwl/sequence_qc_min_mapq"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_threshold",
                            "source": "#qc_generator.cwl/sequence_qc_threshold"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_truncate",
                            "source": "#qc_generator.cwl/sequence_qc_truncate"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/hsmetrics_minimum_base_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/hsmetrics_coverage_cap",
                            "source": "#qc_generator.cwl/hsmetrics_coverage_cap"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/major_threshold",
                            "source": "#qc_generator.cwl/duplex_biometrics_major_threshold"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/vcf_file",
                            "source": "#qc_generator.cwl/vcf_file"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sample_sex",
                            "source": "#qc_generator.cwl/sample_sex"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sample_group",
                            "source": "#qc_generator.cwl/sample_group"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/maf",
                            "source": "#qc_generator.cwl/hotspots_maf"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_positions"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_n"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_del"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_acgt"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_figures"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_pileup"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_by_substitution"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_major_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_major_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_major_csv"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_extract_pickle"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_sites_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_plot"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_json"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_csv"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_duplex_bam/fillout_maf"
                        }
                    ],
                    "run": "#qc_duplex_bam.cwl",
                    "label": "qc_duplex_bam",
                    "https://www.sevenbridges.com/x": 386.90625,
                    "https://www.sevenbridges.com/y": 1424.078125
                },
                {
                    "id": "#qc_generator.cwl/simplex_bam_pool_a",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_a/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_a/output_directory_name",
                            "default": "simplex_bam_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_a/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_a/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "simplex_bam_pool_a",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 744.4375
                },
                {
                    "id": "#qc_generator.cwl/simplex_bam_pool_b",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_b/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_b/output_directory_name",
                            "default": "simplex_bam_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_b/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/simplex_bam_pool_b/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "simplex_bam_pool_b",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 623.734375
                },
                {
                    "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b/output_directory_name",
                            "default": "uncollapsed_bam_stats_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_b/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "uncollapsed_bam_stats_pool_b",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 382.328125
                },
                {
                    "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_hs_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a/output_directory_name",
                            "default": "uncollapsed_bam_stats_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/uncollapsed_bam_stats_pool_a/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "uncollapsed_bam_stats_pool_a",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 503.03125
                },
                {
                    "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_mean_quality_by_cycle_chart_output_base_recal",
                                "#qc_generator.cwl/qc_uncollapsed_bam/gatk_mean_quality_by_cycle_output_base_recal"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal/output_directory_name",
                            "default": "gatk_mean_quality_by_cycle_recal"
                        },
                        {
                            "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/gatk_mean_quality_by_cycle_recal/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "gatk_mean_quality_by_cycle_recal",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 865.1640625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a/output_directory_name",
                            "default": "collapsed_bam_stats_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_a/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_stats_pool_a",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1909.5625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b/output_directory_name",
                            "default": "collapsed_bam_stats_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_stats_pool_b/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_stats_pool_b",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1788.859375
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_pool_a",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_a"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a/output_directory_name",
                            "default": "collapsed_bam_duplex_metrics_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_a/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_duplex_metrics_pool_a",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 2257.71875
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_umi_counts_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_family_size_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_yield_metrics_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_umi_counts_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_qc_pool_b",
                                "#qc_generator.cwl/qc_collapsed_bam/fgbio_collect_duplex_seq_metrics_duplex_family_size_pool_b"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b/output_directory_name",
                            "default": "collapsed_bam_duplex_metrics_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_duplex_metrics_pool_b/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_duplex_metrics_pool_b",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 2137.015625
                },
                {
                    "id": "#qc_generator.cwl/collapsed_bam_biometrics",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_biometrics/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_json",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_csv",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_sites_plot",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_plot",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_json",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_csv",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_plot",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_json",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_major_csv",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_extract_pickle",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_minor_sites_plot",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_csv",
                                "#qc_generator.cwl/qc_collapsed_bam/biometrics_sexmismatch_json"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_biometrics/output_directory_name",
                            "default": "collapsed_bam_biometrics"
                        },
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_biometrics/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/collapsed_bam_biometrics/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "collapsed_bam_biometrics",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 2378.421875
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_sequence_qc",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_sequence_qc/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_positions",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_n",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_del",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_acgt",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_figures",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_pileup",
                                "#qc_generator.cwl/qc_duplex_bam/sequence_qc_noise_by_substitution"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_sequence_qc/output_directory_name",
                            "default": "duplex_bam_sequence_qc"
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_sequence_qc/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_sequence_qc/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_sequence_qc",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1334
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_stats_pool_a",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_a/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_a",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_a/output_directory_name",
                            "default": "duplex_bam_stats_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_a/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_a/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_stats_pool_a",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1213.296875
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_stats_pool_b",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_b/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_txt_pool_b",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b",
                                "#qc_generator.cwl/qc_duplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_b/output_directory_name",
                            "default": "duplex_bam_stats_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_b/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_stats_pool_b/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_stats_pool_b",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1092.59375
                },
                {
                    "id": "#qc_generator.cwl/duplex_bam_biometrics",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_biometrics/files",
                            "linkMerge": "merge_flattened",
                            "source": [
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_major_csv",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_major_json",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_major_plot",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_csv",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_json",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_plot",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_minor_sites_plot",
                                "#qc_generator.cwl/qc_duplex_bam/biometrics_extract_pickle"
                            ]
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_biometrics/output_directory_name",
                            "default": "duplex_bam_biometrics"
                        },
                        {
                            "id": "#qc_generator.cwl/duplex_bam_biometrics/output_subdirectory_name",
                            "source": "#qc_generator.cwl/sample_name"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/duplex_bam_biometrics/directory"
                        }
                    ],
                    "run": "#put_in_dir.cwl",
                    "label": "duplex_bam_biometrics",
                    "https://www.sevenbridges.com/x": 1453.435546875,
                    "https://www.sevenbridges.com/y": 1561.453125
                },
                {
                    "id": "#qc_generator.cwl/qc_simplex_bam",
                    "in": [
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/reference",
                            "source": "#qc_generator.cwl/reference"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/simplex_bam",
                            "source": "#qc_generator.cwl/simplex_bam"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/pool_b_target_intervals",
                            "source": "#qc_generator.cwl/pool_b_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/pool_b_bait_intervals",
                            "source": "#qc_generator.cwl/pool_b_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/pool_a_bait_intervals",
                            "source": "#qc_generator.cwl/pool_a_bait_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/pool_a_target_intervals",
                            "source": "#qc_generator.cwl/pool_a_target_intervals"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/hsmetrics_minimum_mapping_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_mapping_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/hsmetrics_minimum_base_quality",
                            "source": "#qc_generator.cwl/hsmetrics_minimum_base_quality"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/hsmetrics_coverage_cap",
                            "source": "#qc_generator.cwl/hsmetrics_coverage_cap"
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_b"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_alignment_summary_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_base_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_per_target_coverage_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_hs_metrics_txt_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_histogram_pdf_pool_a"
                        },
                        {
                            "id": "#qc_generator.cwl/qc_simplex_bam/gatk_collect_insert_size_metrics_txt_pool_a"
                        }
                    ],
                    "run": "#qc_simplex_bam.cwl",
                    "label": "qc_simplex_bam",
                    "https://www.sevenbridges.com/x": 386.90625,
                    "https://www.sevenbridges.com/y": 1051.375
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                },
                {
                    "class": "MultipleInputFeatureRequirement"
                },
                {
                    "class": "StepInputExpressionRequirement"
                }
            ],
            "https://schema.org/author": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/identifier": "",
                    "https://schema.org/name": "Charlie Murphy"
                }
            ],
            "https://schema.org/citation": "",
            "https://schema.org/codeRepository": "https://github.com/msk-access/cwl_subworkflows",
            "https://schema.org/contributor": [
                {
                    "class": "https://schema.org/Person",
                    "https://schema.org/email": "mailto:murphyc4@mskcc.org",
                    "https://schema.org/name": "Charlie Murphy"
                }
            ],
            "https://schema.org/dateCreated": "2021-05-19",
            "https://schema.org/license": "https://spdx.org/licenses/Apache-2.0"
        }
    ],
    "cwlVersion": "v1.0",
    "$schemas": [
        "http://schema.org/version/latest/schemaorg-current-http.rdf"
    ]
}