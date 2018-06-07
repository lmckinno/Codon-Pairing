#Create a plot for number of times a motif is repeated


#install.packages("ggplot2")

library(ggplot2)


 myData <- read.csv(file="./viruses_repeatedMotifs.txt", header = TRUE,sep=",");

  png("./viruses_repeatedMotifs.png", width = 1400, height = 600)

 motifPlot <- ggplot(data = myData) + geom_point(mapping = aes(x = motif_frequency, y = count), color = "black", size = 2) + #xlim(0,120) +
   theme(axis.text = element_text(size = 18)) +
   theme(axis.title = element_text(size=24)) +
   theme(plot.title = element_text(size=28,hjust=0.5))
 print(motifPlot + ggtitle("Viruses - Repeated Motifs") + labs(x = "Number of Times a Motif is Repeated", y = "ln(frequency)"))

dev.off()



