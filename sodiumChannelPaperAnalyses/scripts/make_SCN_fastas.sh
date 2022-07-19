cd $1
for i in {1,2,3,4,5,8}; do rm SCN${i}A.$2.*fa; done
rm SCNA.$2.*fa
for d in */; do  cat $d/SCN1A/$d/sequences/FAA/SCN1A.FAA >> SCN1A.$2.all.fa ; done
for d in */; do  cat $d/SCN2A/$d/sequences/FAA/SCN2A.FAA >> SCN2A.$2.all.fa ; done
for d in */; do  cat $d/SCN3A/$d/sequences/FAA/SCN3A.FAA >> SCN3A.$2.all.fa ; done
for d in */; do  cat $d/SCN4A/$d/sequences/FAA/SCN4A.FAA >> SCN4A.$2.all.fa ; done
for d in */; do  cat $d/SCN5A/$d/sequences/FAA/SCN5A.FAA >> SCN5A.$2.all.fa ; done
for d in */; do  cat $d/SCN8A/$d/sequences/FAA/SCN8A.FAA >> SCN8A.$2.all.fa ; done
cd -
