#Create a plot for number of times a motif is repeated

#install.packages("ggplot2")

library(ggplot2)


 myData <- read.csv(file="./mammals_repeatedMotifs.txt", header = TRUE,sep=","); #Insert path to input file here

  png("./mammals_repeatedMotifs.png", width = 1400, height = 600)#Insert path to output graph here

 motifPlot <- ggplot(data = myData) + geom_point(mapping = aes(x = motif_frequency, y = count), color = "black", size = 2) + #xlim(0,120) + ##Add this to set an x-limit, removing outliers
   theme(axis.text = element_text(size = 18)) +
   theme(axis.title = element_text(size=24)) +
   theme(plot.title = element_text(size=28,hjust=0.5))
 print(motifPlot + ggtitle("Mammals - Repeated Motifs") + labs(x = "Number of Times a Motif is Repeated", y = "ln(frequency)")) #Adjust this line to change the title

dev.off()



