library(tidyverse)
library(ggtree)
library(ggmsa)




#SCN1A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN1A.DNA.trimmed.fa.raxml.bestTree")
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

p <- ggtree(tree,layout="roundrect",branch.length="none") %<+% myTox +geom_tiplab(offset=0.2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),size=size,position="dodge"))  +theme(legend.position="none")


myFig<-msaplot(p,fasta="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN1A.PROT.pLoop.seqs",offset=4,height=1.0)+guides(size="none")+guides(shape="none",color="none")
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN1A.PROT.pLoop.pdf",width=15,height=6.7)



#SCN3A


tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN3A.DNA.trimmed.fa.raxml.bestTree")
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


myFig<-msaplot(p,fasta="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN3A.PROT.pLoop.seqs",offset=7,height=1.0)+guides(size="none",shape="none",color="none") 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN3A.PROT.pLoop.pdf",width=15,height=3*6.7)


tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN4A.DNA.trimmed.fa.raxml.bestTree")
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


myFig<-msaplot(p,fasta="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.pLoop.seqs",offset=6,height=1.0)+guides(size="none",shape="none",color="none") 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN4A.PROT.pLoop.pdf",width=15,height=3*6.7)

# special figure for SCN4A
fasta<-read.fasta("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.pLoop.seqs",seqtype="AA",as.string=TRUE)
write.fasta(fasta[get_taxa_name(p)],names=get_taxa_name(p),file="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.pLoop.seqs.ordered",as.string=TRUE)

myMSAL<-ggmsa("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.pLoop.seqs.ordered",0,30, font = "DroidSansMono", char_width = 0.5, seq_name = FALSE,color="Zappo_AA")+geom_seqlogo(adaptive = FALSE,color="Zappo_AA")+theme(legend.position="none") +theme(plot.margin = margin(0,0,0,0, "cm"))
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.0.30.png",height=15,width=10)
myMSAR<-ggmsa("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.pLoop.seqs.ordered",31,100, font = "DroidSansMono", char_width = 0.5, seq_name = FALSE,color="Zappo_AA")+theme(legend.position="none")+geom_seqlogo(adaptive = FALSE,color="Zappo_AA")+ theme(plot.margin = margin(0,0,0,0, "cm"))
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN4A.PROT.31.end.png",height=15,width=10)


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


myFig<-msaplot(p,fasta="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN5A.PROT.pLoop.seqs",offset=6,height=1.0)+guides(size="none",shape="none",color="none") 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN5A.PROT.pLoop.pdf",width=15,height=3*6.7)


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


myFig<-msaplot(p,fasta="~/projects/poison/sodiumChannelPaper/Figures/Figure3/plot_data/SCN8A.PROT.pLoop.seqs",offset=6,bg_line=FALSE,height=1.0)+guides(size="none",shape="none",color="none")
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure3/SCN8A.PROT.pLoop.pdf",width=15,height=3*6.7)


