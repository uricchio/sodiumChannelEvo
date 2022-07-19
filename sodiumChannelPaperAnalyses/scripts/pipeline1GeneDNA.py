from HPwrap import HPtools
import sys

# make input files for your organism
#obj = HPtools.MakeInputFiles()
#obj.makeAllHybs()

t = sys.argv[1]
k = sys.argv[2]
gene = sys.argv[3]

# run HypPiper
#obj2 = HPtools.RunHybPiper(ref='data/hybrids.fa',naU='data/namelistUnique.txt',naS='data/namelistScratch.txt')
#obj2.runHybPiper(t=int(sys.argv[1]),k=int(sys.argv[2]))

# trim output files
obj3 = HPtools.Prune(t=t,k=k,d=10,genes=[gene])

#obj3.makeGeneFastas()
#obj3.makeBlastDB()
#obj3.runBlast()

#for geneNum in range(0,1):
#    obj3.checkLowBlastGene(geneNum=geneNum,skip=1)
#    obj3.backFillProtein(geneNum=geneNum)

#obj3.makeAllGenes()
#obj3.makeAlignments(typ="pruned")
#obj3.makeAlignments(typ="orig")
#obj3.pruneEmpty()
#obj3.pruneEmpty()
obj3.makeTrees(typ="pruned",boots=True,pref="treesDNA"+gene,new=True,nuc=True)
obj3.makeTrees(typ="orig",boots=True,pref="treesDNA"+gene,new=True,nuc=True)
        
