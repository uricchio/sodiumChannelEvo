from HPwrap import HPtools
import sys

outDirAssembs = sys.argv[3]
outDirTrees = sys.argv[4]
alignFile = sys.argv[5]

# make input files for your organism
#obj = HPtools.MakeInputFiles(HeadDir="/global/home/users/uricchio/software/HybPiper-master/sodiumChannelPaperAnalyses/")
#obj.makeAllHybs()

# run HypPiper
#obj2 = HPtools.RunHybPiper(ref=alignFile,naU='data/namelistUnique.txt',naS='data/namelistScratch.txt',tvals=[56,60,64,68,72,76,80,84], assembDir=outDirAssembs,HPshFile='sodiumChannelPaperAnalyses/scripts/run_tests.sh')
#obj2.runHybPiper(t=int(sys.argv[1]),k=int(sys.argv[2]))

# Generate trees
t = sys.argv[1]
k = sys.argv[2]

obj3 = HPtools.ManipSeqs(t=t,k=k,infile="~/software/HybPiper-master/sodiumChannelPaperAnalyses/"+alignFile,scratchLoc=outDirAssembs)
obj3.makeGeneFastas()
obj3.makeAllGenes(prot=True)
obj3.makeAlignments(typ="orig",nuc=False)
obj3.makeDNAAlFromProt(typ="orig")
obj3.makeTrees(typ="orig",pref=outDirTrees,nuc=True)
