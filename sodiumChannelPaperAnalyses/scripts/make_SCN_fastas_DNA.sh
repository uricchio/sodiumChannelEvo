cd $1
#for i in {1,2,3,4,5,8}; do rm SCN${i}A.$2.DNA.fa; done
for d in */; do  cat $d/SCN1A/$d/sequences/FNA/SCN1A.FNA >> SCN1A.$2.DNA.fa ; done
for d in */; do  cat $d/SCN2A/$d/sequences/FNA/SCN2A.FNA >> SCN2A.$2.DNA.fa ; done
for d in */; do  cat $d/SCN3A/$d/sequences/FNA/SCN3A.FNA >> SCN3A.$2.DNA.fa ; done
for d in */; do  cat $d/SCN4A/$d/sequences/FNA/SCN4A.FNA >> SCN4A.$2.DNA.fa ; done
for d in */; do  cat $d/SCN5A/$d/sequences/FNA/SCN5A.FNA >> SCN5A.$2.DNA.fa ; done
for d in */; do  cat $d/SCN8A/$d/sequences/FNA/SCN8A.FNA >> SCN8A.$2.DNA.fa ; done
cd -
