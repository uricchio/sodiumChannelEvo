# note -- this seems to work in bash but not zsh for some reason

for i in {1,3,4,5,8}; do python make_pcoc_trees.py ~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN${i}A.DNA.trimmed.manual.fa.raxml.bestTree > SCN${i}A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.bestTree; done

for i in {1,3,4,5,8}; do python make_pcoc_align.py ~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN${i}A.PROT.trimmed.manual.fa > SCN${i}A.PROT.trimmed.manual.MissingToxPruned.fa; done

for i in {1,3,4,5,8}; do python reRootGeneTrees.py SCN${i}A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.bestTree > SCN${i}A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree; done

CMD_PCOC_DOCKER="docker run -e LOCAL_USER_ID=`id -u $USER` --rm -v $PWD:$PWD -e CWD=$PWD carinerey/pcoc"

for i in {1,3,4,5,8}; do $CMD_PCOC_DOCKER pcoc_num_tree.py -t SCN${i}A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree -o num_tree.${i}.pdf; done
