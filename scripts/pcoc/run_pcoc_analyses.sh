# command for PCOC
CMD_PCOC_DOCKER="docker run -e LOCAL_USER_ID=`id -u $USER` --rm -v $PWD:$PWD -e CWD=$PWD carinerey/pcoc"

# SCN1A scenario
#scenario="6,5,0,3,4,1,2/21,19,20,13,18,16,14,15,17"
#$CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN1A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.1.labeled.pdf -m $scenario
#$CMD_PCOC_DOCKER pcoc_det.py  -t SCN1A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -aa SCN1A.PROT.trimmed.manual.MissingToxPruned.fa -o output_pcoc_det -m $scenario -f 0.8 

# SCN3A scenario
scenario="11,9,10,5,8,6,7/26,22,25,20,21,23,24,18,19,14,17,15,16/58,57,56,50,55,53,54,51,52/66,60,65,63,61,62,64/107,93,106,91,92,105,94,104,97,95,96,102,103,100,101,98,99"
$CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN3A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.3.labeled.pdf -m $scenario
$CMD_PCOC_DOCKER pcoc_det.py  -t SCN3A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -aa SCN3A.PROT.trimmed.manual.MissingToxPruned.fa -o output_pcoc_det -m $scenario -f 0.8 

# SCN4A scenario
#scenario="7,1,6,4,5,2,3/28,24,27,25,26,22,23,16,21,17,20,18,19/66,65,50,51,64,57,53,56,58,63,54,55,52,59,62,60,61/93,92,87,90,91,88,89/103,101,102,97,95,96,98,99,100"
#$CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN4A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.4.labeled.pdf -m $scenario
#$CMD_PCOC_DOCKER pcoc_det.py  -t SCN4A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -aa SCN4A.PROT.trimmed.manual.MissingToxPruned.fa -o output_pcoc_det -m $scenario -f 0.8 

# SCN5A scenario
#scenario="13,3,12,1,2,10,11,8,9,4,7,5,6/44,38,43,36,37,41,42,39,40/51,49,50,47,48/64,62,63,56,61,54,55,59,60,57,58"
#$CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN5A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.5.labeled.pdf -m $scenario
#$CMD_PCOC_DOCKER pcoc_det.py  -t SCN5A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -aa SCN5A.PROT.trimmed.manual.MissingToxPruned.fa -o output_pcoc_det -m $scenario -f 0.8 

# SCN8A scenario
#scenario="16,2,15,0,1,13,14,7,12,3,6,8,11,4,5,9,10/26,24,25,20,23,18,19,21,22/36,34,30,33,28,29,31,35/88,86,87,84,85,82,83/107,97,106,95,96,100,105,98,99,103,104,101,102"
#$CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN8A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.8.labeled.pdf -m $scenario
#$CMD_PCOC_DOCKER pcoc_det.py  -t SCN8A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -aa SCN8A.PROT.trimmed.manual.MissingToxPruned.fa -o output_pcoc_det -m $scenario -f 0.8 
