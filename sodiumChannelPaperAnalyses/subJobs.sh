for t in {56,60,64,68,72,76,80,84}; do sbatch subAssemb.slurm $t 45 /global/scratch/users/uricchio/assembs_xenPum_ref_orig trees_xenPum_ref_orig_DNA data/hybrids.fa; done
for t in {56,60,64,68,72,76,80,84}; do sbatch subAssemb.slurm $t 45 /global/scratch/users/uricchio/assembs_xen_ref_orig trees_xen_ref_orig_DNA data/xenTro.new.fa; done
#for t in {56,60,64,68,72,76,80,84}; do sbatch subAssemb.slurm $t 45 /global/scratch/users/uricchio/assembs_xenPum_ref_HPfixed trees_xenPum_ref_HPfixed_DNA data/hybrids.fa; done
#for t in {56,60,64,68,72,76,80,84}; do sbatch subAssemb.slurm $t 45 /global/scratch/users/uricchio/assembs_xen_ref_HPfixed trees_xen_ref_HPfixed_DNA data/xenTro.new.fa; done
for t in {68,72,76,80}; do sbatch subAssembAll.slurm $t 45 /global/scratch/users/uricchio/assembs_xenPum_ref_HPfixed_all trees_xenPum_ref_HPfixed_DNA_all data/hybrids.fa; done
