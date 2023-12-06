#!/bin/bash

# get the current working directory
dir=$(pwd)
# directory to save the output SRC files
output_dir="${dir}/src_folder"

# making new output directory if it doesn't exist
mkdir -p "${output_dir}"

# Processing each NIfTI file
for nii_file in "${dir}"/*.nii; do
    # need to extract name for each file to use them latter durring recontruction
    base_name=$(basename "${nii_file}" .nii)
    # output with the same name as input
    output_file="${output_dir}/${base_name}.nii.src.gz"
    # final dsi studio command
    dsi_studio --action=src --source="${nii_file}" --b_table="${dir}/b_table_new.txt" --output="${output_file}"
done
