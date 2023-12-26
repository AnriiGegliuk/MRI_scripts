#!/bin/bash

# asking some params
echo "Enter the study variable (index number):"
read study_variable
echo "Enter the T-threshold:"
read t_threshold
echo "Enter the length threshold:"
read length_threshold

# define the source and demographic files
# source_file="4D_HF.fa.db.fib.gz"
# demo_file="participants_test.tsv"

# run DSI Studio command with user inputs
dsi_studio --action=cnt \
           --source=$source_file \
           --demo=$demo_file \
           --variable_list=$study_variable \
           --voi=$study_variable \
           --t_threshold=$t_threshold \
           --length_threshold=$length_threshold \
           --permutation=2000 \
           --output=group_analysis \
           --no_tractogram=0

echo "Analysis complete with variable $study_variable, T-threshold $t_threshold, and length threshold $length_threshold."
