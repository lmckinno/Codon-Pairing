#Create a plot for the frequency of codong pairing by codong

#install.packages("ggplot2")

library(ggplot2)

 myData <- read.csv(file="./viruses_codonsUsed.txt",header=TRUE,sep=",");  #insert the path here

 png("viruses_codonsUsed.png", width = 1400, height = 600)

 plot <- ggplot(data = myData, aes(x = species_codon, y = frequency)) + ylim(0,1.0) +
   theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
   theme(axis.text = element_text(size = 18)) +
   theme(axis.title = element_text(size=24)) +
   theme(plot.title = element_text(size=28,hjust=0.5)) +
   geom_boxplot(outlier.size = 0.2)

 print(plot + ggtitle("Viruses - Frequency of Codon Pairing by Codon") + labs(x = "Codon", y = "Frequency"))

dev.off()

