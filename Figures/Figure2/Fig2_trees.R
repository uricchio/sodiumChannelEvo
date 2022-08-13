library(tidyverse)
library(ggtree)
library(ggmsa)

#SCN1A



tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN1A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
#pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec]))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )
p <- ggtree(tree,layout="roundrect") %<+% myTox +geom_tiplab(size=3) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),position="dodge")) +theme(legend.position="none")+geom_nodelab(size=2)+ ggplot2::xlim(0, 0.15)
p 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN1A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.pdf",height=4,width=8)

#SCN3A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN3A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
#pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec]))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )
p <- ggtree(tree,layout="roundrect") %<+% myTox +geom_tiplab(size=2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),position="dodge")) +theme(legend.position="none")+geom_nodelab(size=2)+ ggplot2::xlim(0, 0.3)
p 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN3A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.pdf",height=3*4,width=8)

#SCN4A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN4A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
#pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec]))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )
p <- ggtree(tree,layout="roundrect") %<+% myTox +geom_tiplab(size=2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),position="dodge")) +theme(legend.position="none")+geom_nodelab(size=2)+ ggplot2::xlim(0, 0.2)
p 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN4A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.pdf",height=3*4,width=8)

#SCN5A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN5A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
#pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec]))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )
p <- ggtree(tree,layout="roundrect") %<+% myTox +geom_tiplab(size=2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),position="dodge")) +theme(legend.position="none")+geom_nodelab(size=2)+ ggplot2::xlim(0, 0.4)
p 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN5A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.pdf",height=3*4,width=8)

#SCN8A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN8A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
## visualize the tree 
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
colnames(pois) <- c("node","tox")
#pois$node<-gsub("_","-",pois$node)
pois$tox<-gsub(1,-1,pois$tox)
pois$tox<-gsub(0,1,pois$tox)
pois$tox<-gsub(-1,0,pois$tox)

myTox = data.frame()

for (spec in tree$tip.label) {
  if (spec %in% pois$node) {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=pois$tox[pois$node==spec]))
  } else {
    myTox<-rbind(myTox,data.frame(tip.label=spec,tox=NA))
  }
}

pois<-pois %>% filter( node %in% intersect(tree$tip.label,pois$node) )
p <- ggtree(tree,layout="roundrect") %<+% myTox +geom_tiplab(size=2) + geom_tippoint(aes(shape = as.factor(tox), color = as.factor(tox),position="dodge")) +theme(legend.position="none")+geom_nodelab(size=2)+ ggplot2::xlim(0, 0.3)
p 
ggsave("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN8A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.pdf",height=3*4,width=8)

# make Busted trees for foreground analysis

#SCN1A
tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN1A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
fg = c("Node18","Node16","Node15","Node13","Node33","Node32","Node30","Node29")
fg_tips = c("Epipedobates_tricolor","Epipedobates_anthonyi","Epipedobates_darwinwallacei","Ameerega_bilinguis","Dendrobates_leucomelas","Dendrobates_histrionicus","Dendrobates_bombetes","Dendrobates_galactonotus","Phyllobates_terribilis")

for (i in seq(length(tree$node.label))) {
  if (tree$node.label[i] %in% fg) {
    tree$node.label[i] <- paste(tree$node.label[i],"{Foreground}",sep='')
  }
}

for (i in seq(length(tree$tip.label))) {
  if (tree$tip.label[i] %in% fg_tips) {
    tree$tip.label[i] <- paste(tree$tip.label[i],"{Foreground}",sep='')
  }
}

write.tree(tree,file="~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN1A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.annot")

# SCN3A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN3A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
myPois<-pois %>% filter(V2 > 0)
fg = c("Node60","Node62","Node58","Node57","Node56","Node55","Node73","Node71","Node41","Node40","Node38","Node37","Node146","Node143","Node142","Node138","Node139","Node137","Node125","Node124","Node122","Node121","Node181","Node10","Node9","Node8","Node1")
fg_tips = c()

for (spec in myPois$V1) {
  if (spec %in% tree$tip.label) {
    fg_tips =c(fg_tips,spec)
  }
}

for (i in seq(length(tree$node.label))) {
  if (tree$node.label[i] %in% fg) {
    tree$node.label[i] <- paste(tree$node.label[i],"{Foreground}",sep='')
  }
}

for (i in seq(length(tree$tip.label))) {
  if (tree$tip.label[i] %in% fg_tips) {
    tree$tip.label[i] <- paste(tree$tip.label[i],"{Foreground}",sep='')
  }
}

write.tree(tree,file="~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN3A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.annot")

# SCN4A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN4A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
myPois<-pois %>% filter(V2 > 0)
fg = c("Node93","Node91","Node89","Node106","Node105","Node87","Node88","Node55","Node54","Node53","Node50","Node49","Node146","Node148","Node163","Node161","Node158","Node157","Node142","Node141","Node145","Node177","Node176","Node170","Node172","Node171","Node10","Node7","Node6","Node5")
fg_tips = c()

for (spec in myPois$V1) {
  if (spec %in% tree$tip.label) {
    fg_tips =c(fg_tips,spec)
  }
}

for (i in seq(length(tree$node.label))) {
  if (tree$node.label[i] %in% fg) {
    tree$node.label[i] <- paste(tree$node.label[i],"{Foreground}",sep='')
  }
}

for (i in seq(length(tree$tip.label))) {
  if (tree$tip.label[i] %in% fg_tips) {
    tree$tip.label[i] <- paste(tree$tip.label[i],"{Foreground}",sep='')
  }
}

write.tree(tree,file="~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN4A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.annot")

# SCN5A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN5A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
myPois<-pois %>% filter(V2 > 0)
fg = c("Node81","Node79","Node76","Node77","Node75","Node66","Node65","Node34","Node35","Node38","Node39","Node30","Node26","Node53","Node52","Node50","Node10","Node19","Node18","Node8","Node7")
fg_tips = c()

for (spec in myPois$V1) {
  if (spec %in% tree$tip.label) {
    fg_tips =c(fg_tips,spec)
  }
}

for (i in seq(length(tree$node.label))) {
  if (tree$node.label[i] %in% fg) {
    tree$node.label[i] <- paste(tree$node.label[i],"{Foreground}",sep='')
  }
}

for (i in seq(length(tree$tip.label))) {
  if (tree$tip.label[i] %in% fg_tips) {
    tree$tip.label[i] <- paste(tree$tip.label[i],"{Foreground}",sep='')
  }
}

write.tree(tree,file="~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN5A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.annot")

# SCN8A

tree<-read.tree("~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN8A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree")
pois<-read.table("~/projects/poison/sodiumChannelPaper/Data/traitData.txt")
myPois<-pois %>% filter(V2 > 0)
fg = c()
fg_tips = c("Node80","Node81","Node82","Node79","Node77","Node65","Node66","Node67","Node70","Node40","Node46","Node47","Node39","Node53","Node51","Node38","Node34","Node35","Node36","Node33","Node172","Node173","Node171","Node170","Node19","Node18","Node1","Node13","Node12")

for (spec in myPois$V1) {
  if (spec %in% tree$tip.label) {
    fg_tips =c(fg_tips,spec)
  }
}

for (i in seq(length(tree$node.label))) {
  if (tree$node.label[i] %in% fg) {
    tree$node.label[i] <- paste(tree$node.label[i],"{Foreground}",sep='')
  }
}

for (i in seq(length(tree$tip.label))) {
  if (tree$tip.label[i] %in% fg_tips) {
    tree$tip.label[i] <- paste(tree$tip.label[i],"{Foreground}",sep='')
  }
}

write.tree(tree,file="~/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN8A.DNA.trimmed.wTree.manual.fa.BUSTED.json.tree.annot")


