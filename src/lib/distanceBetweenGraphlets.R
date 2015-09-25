#Developed by Pablo Vicente-Munuera
distanceBetweenGraphlets <- function(network1, network2){
  distance <- 0
  for (i in 1:73){
    
    distance <- distance + ((network1[i] - network2[i])^2)
  }
  distance <- sqrt(abs(distance)/73)
}