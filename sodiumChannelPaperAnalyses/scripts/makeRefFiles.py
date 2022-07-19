from HPwrap import HPtools
import sys

# make input files for your organism
obj = HPtools.MakeInputFiles(HeadDir="/global/home/users/uricchio/software/HybPiper-master/sodiumChannelPaperAnalyses/")
obj.makeAllHybs()
