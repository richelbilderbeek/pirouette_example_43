#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex43
#SBATCH --output=example_43.log
#
rm -rf example_43
rm *.png
time Rscript example_43.R
zip -r pirouette_example_43.zip example_43 example_43.R scripts *.png

