# partial assmeblies
k=45
for t in {56,60,64,68,72,76,80,84};  do python3 ../../scripts/get_lengths.py $1/SCNA.t${t}d10k${k}.DNA.renamed.orig.mafft.fa orig $t $k ; done 
