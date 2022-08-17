library(seqinr)
library(ape)
library(geiger)
library(nlme)
library(phytools)

pval<-data.frame()

for  (g in c("3","4","5","8")) {

myTree<-read.tree(paste("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN",g,"A.DNA.trimmed.manual.fa.raxml.bestTree",sep=''))
mySEQ<-read.fasta(paste("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/SCN",g,"A.PROT.trimmed.manual.fa",sep=''))
pois<-read.table("/Users/uricchio/projects/poison/sodiumChannelPaper/Data/traitData.txt")
pois$V1 <- gsub("_","-",pois$V1)

positions = read.table(paste("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/cor_sites.",g,".table",sep=''))
print(paste("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/cor_sites.",g,".table",sep=''))

pos= positions$V1+1


for (k in pos) { 

  df = data.frame()
  chars = c()
  for (j in seq(1,length(pois$V1))) {
     spec = pois$V1[j]
     for (i in seq(1,length(mySEQ))) {
       if(attributes(mySEQ[[i]])$name == spec) {
         t = 0
       if(mySEQ[[i]][k] %in% chars) {
         for (m in seq(1,length(chars))) {
           if (mySEQ[[i]][k] == chars[m]) {
             t = m
           } 
         }
       } else {
          chars = c(chars,mySEQ[[i]][k])
          t = length(chars)
       }
       df<-rbind(df, data.frame(spec=spec,pois = pois$V2[j],seq = t))
      }
    }
  }
  if ( length(chars) >2 || length(chars) ==1 ) {
    next;
  }
  try(mod<-gls(seq ~ pois, correlation = corMartins(1,phy = myTree,form = ~spec),data = df, method = "ML",na.action=na.omit))
  pval<-rbind(pval,data.frame(gene=g,pos=k,pv=coef(summary(mod))[,4][2]))
}
}

#sites significantly correlated at p < 0.05 level given PGLS correction

write.table(pval[pval$pv < 0.05,],"/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/cor_sites.all.pgls")