plotingResults <- function (fileGeo2D, title, fileOriginal, fileSF) {
  source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/showGraphletCountInfo.R', echo=TRUE)
  
  geo2DGC <- read.csv(file = fileGeo2D, sep = "\t")
  resultsGeo2D <- showGraphletCountInformation(geo2DGC)
  
  original <- read.csv(file = fileOriginal, sep = "\t")
  resultsOriginal <- showGraphletCountInformation(original)
  
  sf <- read.csv(file = fileSF, sep = "\t")
  resultsSF <- showGraphletCountInformation(sf)
  
  yMax <- max(range(resultsGeo2D, finite = T)[2], range(resultsOriginal, finite = T)[2], range(resultsSF, finite = T)[2])
  
  plot(resultsGeo2D,  col="red", main = title, xlab = "Type of graphlet", ylab = "Frequencies", type="b", axes = F)
  
  lines(resultsOriginal, col="blue", type = "b")
  
  lines(resultsSF, col="green", type = "b")
  
  axis(side=2, at=c(0:yMax))
  axis(side=1, at=seq(0, 74, by=5))
  box()
}