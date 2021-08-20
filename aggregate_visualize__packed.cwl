{
    "$graph": [
        {
            "class": "Workflow",
            "id": "#main",
            "label": "aggregate_visualize",
            "inputs": [
                {
                    "id": "#duplex_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 640.28125
                },
                {
                    "id": "#collapsed_extraction_files",
                    "type": {
                        "type": "array",
                        "items": "File"
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1067.09375
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 106.703125
                },
                {
                    "id": "#simplex_bam_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 213.40625
                },
                {
                    "id": "#simplex_bam_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 320.109375
                },
                {
                    "id": "#gatk_mean_quality_by_cycle_recal_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 533.5625
                },
                {
                    "id": "#duplex_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 746.984375
                },
                {
                    "id": "#duplex_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 853.6875
                },
                {
                    "id": "#collapsed_bam_stats_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1173.796875
                },
                {
                    "id": "#collapsed_bam_stats_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1280.5
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_b_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1387.203125
                },
                {
                    "id": "#collapsed_bam_duplex_metrics_pool_a_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 1493.90625
                },
                {
                    "id": "#samples-json",
                    "type": "File",
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 426.828125
                },
                {
                    "id": "#config",
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 397.1875,
                    "https://www.sevenbridges.com/y": 800.3046875
                },
                {
                    "id": "#duplex_bam_sequence_qc_dir",
                    "type": {
                        "type": "array",
                        "items": [
                            "File",
                            "Directory",
                            "null"
                        ]
                    },
                    "https://www.sevenbridges.com/x": 0,
                    "https://www.sevenbridges.com/y": 960.390625
                },
                {
                    "id": "#uncollapsed_bam_stats_pool_b_dir",
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
                    "id": "#multiqc_zip",
                    "outputSource": [
                        "#multiqc_1_10_1/multiqc_zip"
                    ],
                    "type": [
                        "null",
                        "File"
                    ],
                    "https://www.sevenbridges.com/x": 1547.731201171875,
                    "https://www.sevenbridges.com/y": 640.25
                },
                {
                    "id": "#multiqc_html",
                    "outputSource": [
                        "#multiqc_1_10_1/multiqc_html"
                    ],
                    "type": "File",
                    "https://www.sevenbridges.com/x": 1547.731201171875,
                    "https://www.sevenbridges.com/y": 853.65625
                },
                {
                    "id": "#multiqc_output_dir",
                    "outputSource": [
                        "#multiqc_1_10_1/multiqc_output_dir"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1547.731201171875,
                    "https://www.sevenbridges.com/y": 746.953125
                },
                {
                    "id": "#aggregate_parsed_stats",
                    "outputSource": [
                        "#general_stats_parse/aggregate_parsed_stats"
                    ],
                    "type": "Directory",
                    "https://www.sevenbridges.com/x": 1175.390869140625,
                    "https://www.sevenbridges.com/y": 506.6195983886719
                }
            ],
            "steps": [
                {
                    "id": "#qc_aggregator",
                    "in": [
                        {
                            "id": "#qc_aggregator/duplex_extraction_files",
                            "source": [
                                "#duplex_extraction_files"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/simplex_bam_pool_a_dir",
                            "source": [
                                "#simplex_bam_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/simplex_bam_pool_b_dir",
                            "source": [
                                "#simplex_bam_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/duplex_bam_sequence_qc_dir",
                            "source": [
                                "#duplex_bam_sequence_qc_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/duplex_bam_stats_pool_a_dir",
                            "source": [
                                "#duplex_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/duplex_bam_stats_pool_b_dir",
                            "source": [
                                "#duplex_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/collapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#collapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/collapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#collapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/collapsed_bam_duplex_metrics_pool_a_dir",
                            "source": [
                                "#collapsed_bam_duplex_metrics_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/collapsed_bam_duplex_metrics_pool_b_dir",
                            "source": [
                                "#collapsed_bam_duplex_metrics_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/gatk_mean_quality_by_cycle_recal_dir",
                            "source": [
                                "#gatk_mean_quality_by_cycle_recal_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/uncollapsed_bam_stats_pool_b_dir",
                            "source": [
                                "#uncollapsed_bam_stats_pool_b_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/uncollapsed_bam_stats_pool_a_dir",
                            "source": [
                                "#uncollapsed_bam_stats_pool_a_dir"
                            ]
                        },
                        {
                            "id": "#qc_aggregator/collapsed_extraction_files",
                            "source": [
                                "#collapsed_extraction_files"
                            ]
                        }
                    ],
                    "out": [
                        {
                            "id": "#qc_aggregator/aggregate_qc_stats"
                        }
                    ],
                    "run": "#qc_aggregator.cwl",
                    "label": "qc_aggregator",
                    "https://www.sevenbridges.com/x": 397.1875,
                    "https://www.sevenbridges.com/y": 602.5703125
                },
                {
                    "id": "#general_stats_parse",
                    "in": [
                        {
                            "id": "#general_stats_parse/directory",
                            "source": "#qc_aggregator/aggregate_qc_stats"
                        },
                        {
                            "id": "#general_stats_parse/samples-json",
                            "source": "#samples-json"
                        },
                        {
                            "id": "#general_stats_parse/config",
                            "source": "#config"
                        }
                    ],
                    "out": [
                        {
                            "id": "#general_stats_parse/aggregate_parsed_stats"
                        }
                    ],
                    "run": "#general_stats_parse.cwl",
                    "label": "general_stats_parse",
                    "https://www.sevenbridges.com/x": 924.7194213867188,
                    "https://www.sevenbridges.com/y": 674.3446655273438
                },
                {
                    "id": "#multiqc_1_10_1",
                    "in": [
                        {
                            "id": "#multiqc_1_10_1/qc_files_dir",
                            "source": "#general_stats_parse/aggregate_parsed_stats"
                        },
                        {
                            "id": "#multiqc_1_10_1/config",
                            "source": "#config"
                        }
                    ],
                    "out": [
                        {
                            "id": "#multiqc_1_10_1/multiqc_output_dir"
                        },
                        {
                            "id": "#multiqc_1_10_1/multiqc_html"
                        },
                        {
                            "id": "#multiqc_1_10_1/multiqc_zip"
                        }
                    ],
                    "run": "#multiqc.cwl",
                    "https://www.sevenbridges.com/x": 1274.980224609375,
                    "https://www.sevenbridges.com/y": 732.953125
                }
            ],
            "requirements": [
                {
                    "class": "SubworkflowFeatureRequirement"
                }
            ],
            "$namespaces": {
                "sbg": "https://www.sevenbridges.com/"
            }
        },
        {
            "class": "CommandLineTool",
            "id": "#general_stats_parse.cwl",
            "baseCommand": [
                "general_stats_parse.py"
            ],
            "arguments": [
                "--dir",
                "."
            ],
            "inputs": [
                {
                    "id": "#general_stats_parse.cwl/directory",
                    "type": "Directory",
                    "doc": "Directory containing results."
                },
                {
                    "id": "#general_stats_parse.cwl/samples-json",
                    "type": "File",
                    "inputBinding": {
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
                        "prefix": "--config"
                    },
                    "doc": "MultQC config file."
                }
            ],
            "outputs": [
                {
                    "id": "#general_stats_parse.cwl/aggregate_parsed_stats",
                    "label": "aggregate_parsed_stats",
                    "type": "Directory",
                    "outputBinding": {
                        "glob": ".",
                        "outputEval": "${\n    self[0].basename = \"aggregate_qc_stats\";\n    return self[0]\n}"
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
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entry": "$(inputs.directory)",
                            "writable": true
                        }
                    ]
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
            "arguments": [
                {
                    "valueFrom": ".",
                    "position": 999
                }
            ],
            "inputs": [
                {
                    "id": "#multiqc.cwl/qc_files_dir",
                    "type": [
                        "null",
                        "Directory"
                    ],
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
                },
                {
                    "class": "InitialWorkDirRequirement",
                    "listing": [
                        {
                            "entry": "$(inputs.qc_files_dir)",
                            "writable": true
                        }
                    ]
                },
                {
                    "class": "InlineJavascriptRequirement"
                }
            ],
            "id": "#multiqc.cwl"
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
                    "id": "#qc_aggregator.cwl/aggregate_qc_stats",
                    "outputSource": [
                        "#qc_aggregator.cwl/final_aggregate/directory"
                    ],
                    "type": "Directory",
                    "label": "aggregate_qc_stats",
                    "https://www.sevenbridges.com/x": 1217.726806640625,
                    "https://www.sevenbridges.com/y": 1330.7305908203125
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
        }
    ],
    "cwlVersion": "v1.0"
}