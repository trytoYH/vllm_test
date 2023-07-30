#!/bin/bash

# check sudo
if [ "$(id -u)" != "0" ]; then
  echo "This script must be run with root privileges (sudo)." >&2
  exit 1
fi

# git-lfs init
apt-get update && apt-get -y install sudo
sudo apt-get install git-lfs

# llama 13b download
cd /workspace/vllm_test
cd models || mkdir models
git lfs clone https://huggingface.co/openlm-research/open_llama_13b

# llama-tokenizer download
cd /workspace/vllm_test
cd tokenizers || mkdir tokenizers
git lfs clone https://huggingface.co/hf-internal-testing/llama-tokenizer
