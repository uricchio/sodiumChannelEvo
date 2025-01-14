# do for test subset of sequences
# do gene lengths

library(ggplot2)
library(cowplot)
library(wesanderson)

# test data from small number of species with xenopus reference seq

data<-read.table("plot_data/trees_xen_ref_HPfixed_DNA.txt")
plA<-ggplot(data=data, aes(V1,V4,fill=interaction(V2,V3),group=interaction(V1,V2,V3)))+geom_boxplot(width=3)+ylab("Deep coalescences")+scale_x_discrete(name ="Threshold", limits=c(56,60,64,68,72,76,80,84))+scale_fill_manual(values=wes_palette("GrandBudapest2"),name="Assembly parameters",labels=c("K=35, unpruned", "K=45, unpruned", "K=35, pruned","K=45, pruned"))

# make table of assembly lengths
data<-read.table("plot_data/lens_xen_HPfixed.txt")
plB<-ggplot(data=data, aes(V4,V6,fill=interaction(V3,V2),group=interaction(V3,V2,V4)))+geom_boxplot(width=3)+ylab("assembly length")+scale_x_discrete(name ="Threshold", limits=c(56,60,64,68,72,76,80,84))+scale_fill_manual(values=wes_palette("Zissou1", 12, type = "continuous"),name="Gene",labels=c("SCN1A, unpruned", "SCN1A, pruned", "SCN2A, unpruned", "SCN2A, pruned", "SCN3A, unpruned", "SCN3A, pruned", "SCN4A, unpruned", "SCN4A, pruned", "SCN5A, unpruned", "SCN5A, pruned","SCN8A, unpruned", "SCN8A, pruned" ))


pl<-plot_grid(plA,plB,ncol=1,rel_widths=c(1,1.4))
pl
ggsave("plot_data/summary_alignments_xen_ref.pdf",width=13,height=10)


# test data from small number of species with pumilio/xenopus reference sequence
data<-read.table("plot_data/trees_xenPum_ref_HPfixed_DNA.txt")
plA<-ggplot(data=data, aes(V1,V4,fill=interaction(V2,V3),group=interaction(V1,V2,V3)))+geom_boxplot(width=3)+ylab("Deep coalescences")+scale_x_discrete(name ="Threshold", limits=c(56,60,64,68,72,76,80,84))+scale_fill_manual(values=wes_palette("GrandBudapest2"),name="Assembly parameters",labels=c("K=35, unpruned", "K=45, unpruned", "K=35, pruned","K=45, pruned"))

# make table of assembly lengths
data<-read.table("plot_data/lens_xenPum_HPfixed.txt")
plB<-ggplot(data=data, aes(V4,V6,fill=interaction(V3,V2),group=interaction(V3,V2,V4)))+geom_boxplot(width=3)+ylab("assembly length")+scale_x_discrete(name ="Threshold", limits=c(56,60,64,68,72,76,80,84))+scale_fill_manual(values=wes_palette("Zissou1", 12, type = "continuous"),name="Gene",labels=c("SCN1A, unpruned", "SCN1A, pruned", "SCN2A, unpruned", "SCN2A, pruned", "SCN3A, unpruned", "SCN3A, pruned", "SCN4A, unpruned", "SCN4A, pruned", "SCN5A, unpruned", "SCN5A, pruned","SCN8A, unpruned", "SCN8A, pruned" ))


pl<-plot_grid(plA,plB,ncol=1,rel_widths=c(1,1.4))
pl
ggsave("plot_data/summary_alignments_xenPum_ref.pdf",width=13,height=10)


# assemblies of all species
#data<-read.table("~/projects/poison/HPwrap/plot_data/allSpec_tree_perf.txt")
#plA<-ggplot(data=data, aes(V1,V4,fill=interaction(V2,V3),group=interaction(V1,V2,V3)))+geom_boxplot(width=3)+ylab("Deep coalescences")+scale_x_discrete(name ="Threshold", limits=c(76,80,84))+scale_fill_manual(values=wes_palette("GrandBudapest2"),name="Assembly parameters",labels=c("K=35, unpruned", "K=45, unpruned", "K=35, pruned","K=45, pruned"))

# make table of assembly lengths
#data<-read.table("~/projects/poison/HPwrap/plot_data/allSpec_lens.txt")
#plB<-ggplot(data=data, aes(V4,V6,fill=interaction(V3,V2),group=interaction(V3,V2,V4)))+geom_boxplot(width=3)+ylab("assembly length")+scale_x_discrete(name ="Threshold", limits=c(76,80,84))+scale_fill_manual(values=wes_palette("Zissou1", 12, type = "continuous"),name="Gene",labels=c("SCN1A, unpruned", "SCN1A, pruned", "SCN2A, unpruned", "SCN2A, pruned", "SCN3A, unpruned", "SCN3A, pruned", "SCN4A, unpruned", "SCN4A, pruned", "SCN5A, unpruned", "SCN5A, pruned","SCN8A, unpruned", "SCN8A, pruned" ))
  

#pl<-plot_grid(plA,plB,ncol=1,rel_widths=c(1,1.4))

#ggsave("~/projects/poison/HPwrap/plot_data/summary_alignments.pdf",width=13,height=10)
       
