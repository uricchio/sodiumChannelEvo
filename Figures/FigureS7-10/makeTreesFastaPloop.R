library(tidyverse)
library(ggtree)
library(ggmsa)
library(cowplot)
library(seqinr) 

tree<-read.tree("/Users/uricchio/projects/poison/sodiumChannelPaper/scripts/pcoc/SCN4A.DNA.trimmed.manual.fa.raxml.MissingToxPruned.reRooted.bestTree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec],size=0.1))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA,size=0.1))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )

p <- ggtree(tree,layout="roundrect",branch.length="none") %<+% myTox +geom_tiplab(offset=0.2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),size=size,position="dodge")) 


# special figure for SCN4A
fasta<-read.fasta("~/projects/poison/sodiumChannelPaper/Figures/FigureS7-10/plot_data/SCN4A.PROT.pLoop.fa",seqtype="AA",as.string=TRUE)
write.fasta(fasta[get_taxa_name(p)],names=get_taxa_name(p),file="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.trimmed.manual.fa.ordered",as.string=TRUE)

# at this point, need to use python script to subset appropriate columns

myMSAL<-ggmsa("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.trimmed.manual.fa.ordered",1 ,92, font = "DroidSansMono", char_width = 0.5, seq_name = FALSE,color="LETTER")+geom_seqlogo(adaptive = FALSE,color="LETTER")+theme(legend.position="none") +theme(plot.margin = margin(0,0,0,0, "cm"))+theme(axis.title.x=element_blank(),
                                                                 axis.text.x=element_blank(),axis.ticks.x=element_blank())+theme(axis.title.y=element_blank(), axis.text.y=element_blank(),axis.ticks.y=element_blank())
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN4A.PROT.pLoop.png",width=5,height=3*6.7)


                                                                                                                                 
tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN5A.DNA.trimmed.fa.raxml.bestTree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec],size=0.1))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA,size=0.1))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )

p <- ggtree(tree,layout="roundrect",branch.length="none") %<+% myTox +geom_tiplab(offset=0.2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),size=size,position="dodge"))  


# special figure for SCN5A
fasta<-read.fasta("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN5A.PROT.trimmed.manual.fa",seqtype="AA",as.string=TRUE)
write.fasta(fasta[get_taxa_name(p)],names=get_taxa_name(p),file="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN5A.PROT.trimmed.manual.fa.ordered",as.string=TRUE)

# at this point, need to use python script to subset appropriate columns

myMSAL<-ggmsa("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN5A.PROT.trimmed.manual.fa.ordered.corr",1 ,6, font = "DroidSansMono", char_width = 0.5, seq_name = FALSE,color="LETTER")+geom_seqlogo(adaptive = FALSE,color="LETTER")+theme(legend.position="none") +theme(plot.margin = margin(0,0,0,0, "cm"))+theme(axis.title.x=element_blank(),
                                                                                                                                                                                                                                                                                                                                        axis.text.x=element_blank(),axis.ticks.x=element_blank())+theme(axis.title.y=element_blank(), axis.text.y=element_blank(),axis.ticks.y=element_blank())
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN5A.PROT.corr.png",width=5,height=3*6.7)



tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN8A.DNA.trimmed.fa.raxml.bestTree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec],size=0.1))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA,size=0.1))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )

p <- ggtree(tree,layout="roundrect",branch.length="none") %<+% myTox +geom_tiplab(offset=0.2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),size=size,position="dodge")) 


# special figure for SCN8A
fasta<-read.fasta("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN8A.PROT.trimmed.manual.fa",seqtype="AA",as.string=TRUE)
write.fasta(fasta[get_taxa_name(p)],names=get_taxa_name(p),file="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN8A.PROT.trimmed.manual.fa.ordered",as.string=TRUE)

# at this point, need to use python script to subset appropriate columns

myMSAL<-ggmsa("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN8A.PROT.trimmed.manual.fa.ordered.corr",1 ,6, font = "DroidSansMono", char_width = 0.5, seq_name = FALSE,color="LETTER")+geom_seqlogo(adaptive = FALSE,color="LETTER")+theme(legend.position="none") +theme(plot.margin = margin(0,0,0,0, "cm"))+theme(axis.title.x=element_blank(),
                                                                                                                                                                                                                                                                                                                                        axis.text.x=element_blank(),axis.ticks.x=element_blank())+theme(axis.title.y=element_blank(), axis.text.y=element_blank(),axis.ticks.y=element_blank())
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN8A.PROT.corr.png",width=5,height=3*6.7)


