library(ggplot2)
library("wesanderson")

# get omegas FG and BG

data <-data.frame()
for (i in c("1","3","4","5","8") ){
  data<-rbind(data,read.table(paste("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/FigureS6/plot_data/SCN",i,"A.DNA.trimmed.wTree.annot.fa.BUSTED.json.omega",sep="") ))
}

plA<-ggplot(data, aes(as.factor(V2), V3,fill=V1)) +
  geom_bar(stat="identity", position=position_dodge())+scale_fill_manual(values=wes_palette("Royal1"),name="Lineages")+scale_x_discrete(name="Gene",labels=c("SCN1A","SCN3A","SCN4A","SCN5A","SCN8A"))+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
          panel.background = element_blank(), axis.line = element_line(colour = "black"))+
  ylab(expression(omega * " (dN/dS)"))


# made with for i in {1,3,4,5,8}; do python ../../scripts/getJSON_BUSTED.py plot_data/SCN${i}A.DNA.trimmed.wTree.annot.fa.BUSTED.json $i; done > plot_data/BUSTED.table.txt
read.table("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/FigureS6/plot_data/BUSTED.table.txt")->data

get_neg_pos_neut <- function(omega) {
  if (omega < 0.95) {
    return( 0);
  } else if (omega > 0.95 & omega < 1.05) {
    return(1);
  }
  return (2);
}

for (i in seq(1,length(data$V1))) {
  data[i,]$V4 <- get_neg_pos_neut (data[i,]$V4)
}


pl<-ggplot(data, aes(x=interaction(V2),y=V5,fill=as.factor(V4)))+geom_bar(position="stack",stat="identity")+theme_bw() + facet_wrap( ~ V1) +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

pl<- pl + scale_fill_manual(name = "Selection mode",labels=c("Negative","Approx. Neutral","Diversifying"),values=wes_palette("FantasticFox1"))+scale_x_discrete("Gene", labels = c("1"="SCN1A","3"="SCN3A","4"="SCN4A","5"="SCN5A","8"="SCN8A"))+ylab("Porportion of sites")

pl

plF<-plot_grid(plA,pl,labels=c("A","B"),ncol=1)

ggsave("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/FigureS6/FigS6_selection.pdf",plF,height=6,width=7.5)
