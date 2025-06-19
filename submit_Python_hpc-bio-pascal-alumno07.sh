#!/bin/bash
#SBATCH --job-name=reduc-numba
#SBATCH --output=output_reduc_%j.txt
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --partition=hpc-bio-pascal

module load anaconda/2023.03

# Número de elementos como argumento
NUM_ELEMS=$1

# Ejecutar el notebook como script con ipython
ipython reduc-operation-scriptable-alumno07.ipynb $NUM_ELEMS
