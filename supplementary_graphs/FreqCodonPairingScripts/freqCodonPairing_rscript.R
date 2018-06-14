#Create a plot for the frequency of codong pairing by codong

#install.packages("ggplot2")

library(ggplot2)

 myData <- read.csv(file="mammals_codonFreq.txt",header=TRUE,sep=",");  #insert the path to the input file here

 png("mammals_codonFreq.png", width = 1400, height = 600) #insert the path to the output graph to be created here

 plot <- ggplot(data = myData, aes(x = species_codon, y = frequency)) + ylim(0,1.0) +
   theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
   theme(axis.text = element_text(size = 18)) +
   theme(axis.title = element_text(size=24)) +
   theme(plot.title = element_text(size=28,hjust=0.5)) +
   geom_boxplot(outlier.size = 0.2)

 print(plot + ggtitle("Mammals - Frequency of Codon Pairing by Codon") + labs(x = "Codon", y = "Frequency")) #Change the title of the graph here

dev.off()

