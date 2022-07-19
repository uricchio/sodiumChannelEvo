#!/bin/bash
#SBATCH -t 72:00:00
#SBATCH -J test
#SBATCH -N 1
#SBATCH -A co_rosalind
#SBATCH -p savio
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --qos=rosalind_savio_normal

# $1 is the threshold, e.g. 68
# $2 is the kmer, e.g. 55,65,or 75
python scripts/assembAll.py $1 $2 $3 $4 $5
