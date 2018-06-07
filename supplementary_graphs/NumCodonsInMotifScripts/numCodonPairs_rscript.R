
#install.packages("ggplot2")

library(ggplot2)

#Plot for number of codon pairs in each  motif

myData <- read.csv(file="./viruses_numCodons.txt",header=TRUE,sep=",");

png("./viruses_numCodonsLog.png", width = 1400, height = 600)

codonPlot <- ggplot(data = myData) +
 geom_point(mapping = aes(x = Codons_excluded, y = frequency), color = "black") +
  theme(axis.text = element_text(size = 18)) +
  theme(axis.title = element_text(size=24)) +
  theme(plot.title = element_text(size=28,hjust=0.5))
print(codonPlot + ggtitle("Viruses - Number of Codon Pairs in Each Motif") + labs(y = "ln(frequency)", x = "Number of Codon Pairs"))

dev.off()

