#!/bin/bash

# Retrieve latest version for each tool
echo "HIFIHLA_VERSION=$(curl -s https://api.github.com/repos/PacificBiosciences/hifihla/releases/latest | jq -r ".tag_name" | sed 's/^v//' )"

echo "HIFICNV_VERSION=$(curl -s https://api.github.com/repos/PacificBiosciences/HiFiCNV/releases/latest | jq -r '.tag_name' | sed 's/^v//')"

echo "MINIMAP2_VERSION=$(curl -s https://api.github.com/repos/lh3/minimap2/releases/latest | jq -r ".tag_name" | sed 's/^v//')"

echo "PB_CPG_TOOLS_VERSION=$(curl -s https://api.github.com/repos/PacificBiosciences/pb-CpG-tools/releases/latest | jq -r ".tag_name" | sed 's/^v//')"

echo "PBMM2_VERSION=$(curl -s https://api.github.com/repos/PacificBiosciences/pbmm2/releases/latest | jq -r '.tag_name' | sed 's/^v//')"

echo "SVPACK_GIT_HASH=$(curl -s https://api.github.com/repos/PacificBiosciences/svpack/commits/main | jq -r '.sha')"

echo "TRGT_VERSION=$(curl -s https://api.github.com/repos/PacificBiosciences/trgt/releases/latest | jq -r ".tag_name" | sed 's/^v//')"

echo "YAK_VERSION=$(curl -s https://api.github.com/repos/lh3/yak/releases/latest | jq -r '.tag_name' | sed 's/^v//')"

echo "PARAPHASE_VERSION=$(grep ^PARAPHASE_VERSION paraphase/build.env | sed 's/PARAPHASE_VERSION=//')"
