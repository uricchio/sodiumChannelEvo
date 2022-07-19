
for t in {72,76,80,84}; do for i in {1,2,3,4,5,8}; do python split_by_gene.py ../../alignments/low_blast/SCNA.t${t}d10k45.PROT.renamed.pruned.mafft.fa SCN${i}A > ../../alignments/low_blast/SCN${i}A.t${t}d10k45.PROT.renamed.pruned.mafft.fa; done; done
for t in {76,80,84,72}; do for i in {1,3,4,5,8}; do mafft --maxiterate 4 ../../alignments/low_blast/SCN${i}A.t${t}d10k45.PROT.renamed.pruned.mafft.fa > ../../alignments/low_blast/SCN${i}A.t${t}d10k45.PROT.renamed.pruned.mafft.1G.fa; done; done
