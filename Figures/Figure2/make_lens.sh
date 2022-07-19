# full assmeblies
rm plot_data/lens.txt
for t in {76,80,84,86,88}; do for k in {35,45}; do for typ in {"orig","pruned"}; do python3 get_lengths.py ../../alignments/SCNA.t${t}d10k${k}.PROT.renamed.$typ.mafft.fa $typ $t $k >> ../../plot_data/lens.txt; done ; done; done

rm plot_data/lens_HPfixed.txt
for t in {60,64,68,72,76,80};  do for typ in {"orig","pruned"}; do python3 get_lengths.py ../../alignments/newHP/SCNA.t${t}d10k45.PROT.renamed.$typ.mafft.fa $typ $t 45 >> ../../plot_data/lens_HPfixed.txt; done ; done


# partial assmeblies
#rm ../../plot_data/lens_xen.txt
#rm ../../plot_data/lens_xenPum.txt
#for t in {56,60,64,68,72,76,80,84}; do for k in {35,45}; do for typ in {"orig","pruned"}; do python3 get_lengths.py ../../alignments_xen/SCNA.t${t}d10k${k}.PROT.renamed.$typ.mafft.fa $typ $t $k >> ../../plot_data/lens_xen.txt; done ; done; done
#for t in {56,60,64,68,72,76,80,84}; do for k in {35,45}; do for typ in {"orig","pruned"}; do python3 get_lengths.py ../../alignments_xenPum/SCNA.t${t}d10k${k}.PROT.renamed.$typ.mafft.fa $typ $t $k >> ../../plot_data/lens_xenPum.txt; done ; done; done
