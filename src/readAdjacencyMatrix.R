library(igraph)

readAdjacencyMatrix <- function (fileName, outputFileName) {
  adjacencyData <- read.csv(header = F, file = fileName, sep = " ")
  adjacencyData[1] <- NULL
  adjacencyMatrix <- as.matrix(adjacencyData)
  graphM <- graph.adjacency(adjacencyMatrix, mode = "undirected")
  write.graph(graphM, file = outputFileName, "pajek")
}

readAdjacencyMatrix("data/adjacency/Drosophila PIN Confidence-mainA.txt", "data/raw/DrosophilaAdj.sif")
readAdjacencyMatrix("data/adjacency/Hpyroli-mainA.txt", "data/raw/HpyroliAdj.sif")
readAdjacencyMatrix("data/adjacency/KSHV-A.txt", "data/raw/KSHVAdj.sif")
readAdjacencyMatrix("data/adjacency/Malaria-PIN-mainA.txt", "data/raw/MalariaAdj.sif")
readAdjacencyMatrix("data/adjacency/PIN Ecoli-validated-mainA.txt", "data/raw/EcoliAdj.sif")
readAdjacencyMatrix("data/adjacency/PIN-Afulgidus-mainA.txt", "data/raw/AfulgidusAdj.sif")
readAdjacencyMatrix("data/adjacency/PIN-Human-mainA.txt", "data/raw/HumanAdj.sif")
readAdjacencyMatrix("data/adjacency/Pin-Bsubtilis-mainA.txt", "data/raw/BsubtilisAdj.sif")
readAdjacencyMatrix("data/adjacency/VZV-main-A.txt", "data/raw/VZVAdj.sif")
readAdjacencyMatrix("data/adjacency/YeastS-main.txt", "data/raw/YeastSAdj.sif")