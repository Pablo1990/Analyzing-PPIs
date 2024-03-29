#Developed by Pablo Vicente-Munuera
generateRandomNetworks <- function (edges, vertices, nameOfOriginal) {
  source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/samples/RRG_function.R', echo=TRUE)
  r <- sqrt((edges*2)/(vertices*(vertices-1)*pi))
  
  for (i in 1:100){
    geometric <- grg.game(nodes = vertices, radius = r, torus = F) #Torus: F => square, T => a Torus
    #summary(geometric)
  
    fileName <- paste0("data/przulj/random/randomGeo2DNetwork", nameOfOriginal, i ,".sif")
    write.graph(geometric, file = fileName, "pajek")
  }
  
  for (i in 1:100){
    #http://rgm3.lab.nig.ac.jp/RGM/R_rdfile?f=igraph/man/static.power.law.game.Rd&d=R_CC
    #They use exponent.out = 2.1 - 2.4
    sf21 <- static.power.law.game (no.of.nodes = vertices, no.of.edges = edges, exponent.out = 2.1, exponent.in = -1, multiple = T)
    
    eSf21 <- E(sf21) #edges time!
    
    fileName <- paste0("data/przulj/random/randomSFNetwork", nameOfOriginal, i ,".sif")
    
    write.graph(sf21, file = fileName, "pajek")
  }
  
  #BA model (scale-free)
  #They use power = 2.1 - 2.4
  #sf21 <- barabasi.game(n = vertices, power = 2.1, m = vertices/10, directed = F)
  generateRRG(vertices, r, nameOfOriginal, 0.2, "02_")
  generateRRG(vertices, r, nameOfOriginal, 0.5, "02Reversed_")
  generateRRG(vertices, r, nameOfOriginal, 0.75, "075_")
  generateRRG(vertices, r, nameOfOriginal, 0.133333, "075Reversed_")
}

generateRRG <- function (vertices, rRRG, nameOfOriginal, a2, name) {
  i <- 0
  for (i in 1:100){
    rrg <- make_rrg(n = vertices, r = rRRG, a = a2)
    
    rrgG <- graph.adjacency(rrg$adjacency, mode = "undirected")
    
    fileName <- paste0("data/przulj/random/randomRRGNetwork", nameOfOriginal, name ,i ,".sif")
    
    write.graph(rrgG, file = fileName, "pajek")
  }
}
