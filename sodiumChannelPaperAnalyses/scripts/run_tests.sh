#!/bin/bash

t=$1
k=$2
DIR=$3
kl0=$4
kl1=$5
ref=$6
naU=$7
naS=$8
HPD=$9
evalue=$10
MYDIR=${11}

echo $MYDIR

#Remove any previous runs
#parallel rm -r {} :::: namelist.txt

# gunzip files
#while read i; do gunzip $i*.fq.gz; done < namelistScratch.txt

# make file of input seqs for each species
#while read i 
#do python make_input_files_except.py refs.fa $i > hybrids.$i.fa
#done < namelistUnique.txt

#Run main HybPiper script with all available CPUs

while read i
do
$HPD/reads_first.py -r $MYDIR/$i*.fq -b $ref --prefix $DIR/t${t}d10k${k}/$i --thresh $t --kvals $k,$kl0,$kl1 --evalue 1e-10 --depth_multiplier 10 
done < $naU

#Test for paralogs
while read i
do
python $HPD/paralog_investigator.py $i
done < $naS

#Run intronerate
while read i
do
python $HPD/intronerate.py --prefix $i --addN
done < $naS

#while read i; do gzip $i*.fq; done < namelistScratch.txt
