for t in {68,72,76,80}; do for typ in {"pruned","orig"}; do python3 ../../scripts/tree_concord.py $1/t${t}d10k45.$typ.raxml.mlTrees $t 45 $typ ; done; done
