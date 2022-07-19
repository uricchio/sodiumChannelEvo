# make tree concord data for full assembs 
rm plot_data/tree_perf.txt
for t in {60,64,68,72,76,80}; do for typ in {"pruned","orig"}; do python3 tree_concord.py ../../HPwrap/trees_HP_fixed/t${t}d10k45.$typ.raxml.mlTrees $t 45 $typ >> plot_data/tree_perf.txt; done; done

# make tree concord data for partial assembs 
#for t in {56,64,60,68,72,76,80,84}; do for k in {35,45}; do for typ in {"pruned","orig"}; do python3 tree_concord.py ../../trees_xen_ref/t${t}d10k${k}.$typ.raxml.mlTrees $t $k $typ >> ../../plot_data/tree_perf_xen_ref.txt; done; done; done
#for t in {56,64,60,68,72,76,80,84}; do for k in {35,45}; do for typ in {"pruned","orig"}; do python3 tree_concord.py ../../trees_xenPum_ref/t${t}d10k${k}.$typ.raxml.mlTrees $t $k $typ >> ../../plot_data/tree_perf_xenPum_ref.txt; done; done; done

# find number of topologies
#python3 tree_concord.py ../../trees/bootstraps/t84d10k45.pruned.raxml.mlTrees.TMP 84 45 pruned >> ../../plot_data/tree_perf_finalTree.txt
#python3 tree_concord.py ../../trees/bootstraps/t84d10k45.pruned.raxml.bootstraps.TMP 84 45 pruned >> ../../plot_data/tree_perf_bootstraps.txt
