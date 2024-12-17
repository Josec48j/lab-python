#!/bin/bash
#
#SBATCH -p hpc-bio-pascal
#SBATCH -D /home/alumno02/lab-python
#SBATCH --output=%u-%j.out
#SBATCH --error=%u-%j.err # Nombre del archivo de error usando patrones
#SBATCH --cpus-per-task=1

# Cargar el módulo de Python con Anaconda
module load anaconda/2023.03

#Para ejecutar el script
ipython reduc-operation-alumno02.ipynb 10000000 #para 10^7
ipython reduc-operation-alumno02.ipynb 100000000 #para 10^8

#Salir del modulo de Python
module unload anaconda/2023.03
