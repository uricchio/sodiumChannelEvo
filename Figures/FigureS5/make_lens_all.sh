for t in {68,72,76,80}; do for typ in {"orig","pruned"}; do python3 ../../scripts/get_lengths.py $1/SCNA.t${t}d10k45.PROT.renamed.$typ.mafft.fa $typ $t 45 ; done ; done
