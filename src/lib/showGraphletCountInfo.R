#Developed by Pablo Vicente-Munuera

showGraphletCountInformation <- function (graphletCounter) {
  as.data.frame(row.names = graphletCounter$ORBIT, optional = T, graphletCounter$RAW_COUNT)
  
  graphletCounter$ORBIT <- as.factor(graphletCounter$ORBIT)
  totalFreq <- sum(as.numeric(graphletCounter$RAW_COUNT))
  sumRaw_countByFactor <- c()
  i <- 0
  for (i in 0:72) {
    sumRaw <- sum(subset(graphletCounter, graphletCounter$ORBIT == i & graphletCounter$RAW_COUNT >= 0)$RAW_COUNT)
    if (sumRaw > 0){
      sumRaw_countByFactor <- c(sumRaw_countByFactor, -log10(sumRaw/totalFreq))
    } else {
      sumRaw_countByFactor <- c(sumRaw_countByFactor, 0)
    }
  }
  
  #plot(sumRaw_countByFactor, main = title, xlab = "Type of graphlet", ylab = "Frequencies")
  return (sumRaw_countByFactor)
}

showGraphletCountInformationFromRandom <- function (fileNameStart, nameOfOriginal) {
  resultMatrix <- matrix(, nrow=0, ncol=73)
  for (i in 1:100){
    fileName <- paste0(fileNameStart, nameOfOriginal, i ,".sifGC.txt")
    print (fileName)
    csv <- read.csv(file = fileName, sep = "\t")
    resultMatrix <- rbind(resultMatrix, showGraphletCountInformation(csv))
  }
  return (colMeans(resultMatrix))
}

