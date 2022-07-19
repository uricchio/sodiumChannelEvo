from HPwrap import HPtools
import sys

# make input files for your organism
#obj = HPtools.MakeInputFiles(HeadDir="/global/home/users/uricchio/software/HybPiper-master/sodiumChannelPaperAnalyses/")
#obj.makeAllHybs()

# run HypPiper
obj2 = HPtools.RunHybPiper(ref='data/xenTro.new.fa',naU='data/namelistUnique.subset.txt',naS='data/namelistScratch.subset.txt',tvals=[56,60,64,68,72,76,80,84], assembDir='/global/scratch/uricchio/assembs_xen_ref_orig',HPshFile='sodiumChannelPaperAnalyses/scripts/run_tests.sh')
obj2.runHybPiper(t=int(sys.argv[1]),k=int(sys.argv[2]))

# Generate trees
"""
t = sys.argv[1]
k = sys.argv[2]

obj3 = HPtools.ManipSeqs(t=t,k=k,infile="~/software/HybPiper-master/sodiumChannelPaperAnalyses/data/xenTro.new.fa",scratchLoc='/global/scratch/uricchio/assembs_xen_ref_orig')
obj3.makeGeneFastas()
obj3.makeAllGenes()
obj3.makeAlignments(typ="orig",nuc=True)
obj3.makeTrees(typ="orig",pref="trees_xen_ref_orig_DNA",nuc=True)
"""
