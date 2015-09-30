#Developed by Pablo Vicente-Munuera

plotingResults <- function (resultsGeo2D, title, fileOriginal, resultsSF) {
  source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
  
  original <- read.csv(file = fileOriginal, sep = "\t")
  resultsOriginal <- showGraphletCountInformation(original)
  
  yMax <- max(range(resultsGeo2D, finite = T)[2], range(resultsOriginal, finite = T)[2], range(resultsSF, finite = T)[2])
  
  plot(resultsOriginal,main = title, xlab = "Type of graphlet", ylab = "Frequencies", axes = F)
  
  lines(resultsGeo2D, col="blue", type = "b")
  
  lines(resultsSF, col="green", type = "b")
  axis(side=2, at=c(0:yMax))
  axis(side=1, at=seq(0, 74, by=5))
  box()
  legend(50, range(resultsOriginal, finite = T)[2] , c("Original", "Geo2D", "Scale-free"), lty = c(1, 1, 1)
         ,col=c("black", "blue", "green"))
  
}