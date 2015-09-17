showGraphletCountInformation <- function (graphletCounter, title) {
  as.data.frame(row.names = graphletCounter$ORBIT, optional = T, graphletCounter$RAW_COUNT)
  
  graphletCounter$ORBIT <- as.factor(graphletCounter$ORBIT)
  totalFreq <- sum (as.numeric(graphletCounter$RAW_COUNT))
  sumRaw_countByFactor <- c(-log10(sum(subset(graphletCounter, graphletCounter$ORBIT == 0)$RAW_COUNT)/totalFreq))
  i <- 0
  for (i in 1:72) {
    sumRaw_countByFactor <- c(sumRaw_countByFactor, -log10(sum(subset(graphletCounter, graphletCounter$ORBIT == i)$RAW_COUNT)/totalFreq))
  }
  
  plot(sumRaw_countByFactor, main = title)
}