#!/bin/bash

## init setting & download benchmark


# Uninstall torch
pip uninstall torch

# Clone the repository
cd vllm_test

# Install the package in editable mode with a default timeout of 60 seconds
pip install -e . --default-timeout=60

# Add vllm_test directory to PYTHONPATH
export PYTHONPATH=/workspace/vllm_test:$PYTHONPATH

# Install ray
pip install ray

# Reinstall typing-extensions version 4.5.0
pip install --force-reinstall typing-extensions==4.5.0

# Download the JSON file
wget https://huggingface.co/datasets/anon8231489123/ShareGPT_Vicuna_unfiltered/resolve/main/ShareGPT_V3_unfiltered_cleaned_split.json
