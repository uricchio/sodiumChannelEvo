from HPwrap import HPtools
import sys

# make input files for your organism
#obj = HPtools.MakeInputFiles(HeadDir="/global/home/users/uricchio/software/HybPiper-master/sodiumChannelPaperAnalyses/")
#obj.makeAllHybs()

# run HypPiper

#obj2 = HPtools.RunHybPiper(ref='data/hybrids.fa',naU='data/namelistUnique.txt',naS='data/namelistScratch.txt',tvals=[56,60,64,68,72,76,80,84])
#obj2.runHybPiper(t=int(sys.argv[1]),k=int(sys.argv[2]))

# trim output files
t = sys.argv[1]
k = sys.argv[2]

obj3 = HPtools.Prune(t=t,k=k,infile="~/software/HybPiper-master/sodiumChannelPaperAnalyses/data/hybrids.fa")
obj3.makeGeneFastas()
obj3.makeBlastDB()
obj3.runBlast()

for geneNum in range(0,6):
    obj3.checkLowBlastGene(geneNum=geneNum)
    obj3.backFillProtein(geneNum=geneNum)

obj3.makeAllGenes()
obj3.makeAlignments(typ="pruned")
obj3.makeAlignments(typ="orig")
obj3.pruneEmpty()
obj3.pruneEmpty()
obj3.makeTrees(typ="pruned",pref="treesDNA",nuc=True)
obj3.makeTrees(typ="orig",pref="treesDNA",nuc=True)
