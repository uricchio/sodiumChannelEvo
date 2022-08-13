library(ggplot2)
library("wesanderson")

read.table("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/plot_data/BUSTED.table.txt")->data

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

pl<- pl + scale_fill_manual(name = "Selection mode",labels=c("Negative","Approx. Neutral","Diversifying"),values=wes_palette("FantasticFox1"))+scale_x_discrete("gene", labels = c("1"="SCN1A","3"="SCN3A","4"="SCN4A","5"="SCN5A"))+ylab("Porportion of sites")

pl

ggsave("/Users/uricchio/projects/poison/sodiumChannelPaper/Figures/Figure2/Fig2_selection.pdf",pl,height=3,width=7.5)
