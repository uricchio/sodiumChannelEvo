for t in {76,80,84,86,88}; do for k in {35,45}; do for typ in {"orig","pruned"}; do python3 get_lengths.py ../../Data/alignments/SCNA.t${t}d10k${k}.PROT.renamed.$typ.mafft.fa $typ $t $k ; done ; done; done