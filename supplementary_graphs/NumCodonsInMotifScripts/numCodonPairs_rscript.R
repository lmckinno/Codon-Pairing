#Plot for number of codon pairs in each  motif

#install.packages("ggplot2")

library(ggplot2)

myData <- read.csv(file="./mammals_numCodons.txt",header=TRUE,sep=","); #Insert path to input file here

png("./mammals_numCodonsLog.png", width = 1400, height = 600) #Insert path to output graph here

codonPlot <- ggplot(data = myData) +
 geom_point(mapping = aes(x = Codons_excluded, y = frequency), color = "black") +
  theme(axis.text = element_text(size = 18)) +
  theme(axis.title = element_text(size=24)) +
  theme(plot.title = element_text(size=28,hjust=0.5))
print(codonPlot + ggtitle("Mammals - Number of Codon Pairs in Each Motif") + labs(y = "ln(frequency)", x = "Number of Codon Pairs")) #Modify title to the graph here

dev.off()

