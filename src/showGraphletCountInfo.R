showGraphletCountInformation <- function (graphletCounter) {
  as.data.frame(row.names = graphletCounter$ORBIT, optional = T, graphletCounter$RAW_COUNT)
  
  graphletCounter$ORBIT <- as.factor(graphletCounter$ORBIT)
  
  sumRaw_countByFactor <- c(sum(subset(graphletCounter, graphletCounter$ORBIT == 0)$RAW_COUNT))
  i <- 0
  for (i in 1:72) {
    sumRaw_countByFactor <- c(sumRaw_countByFactor, sum(subset(graphletCounter, graphletCounter$ORBIT == i)$RAW_COUNT))
  }
  
  plot(sumRaw_countByFactor)
}