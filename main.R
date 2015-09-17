#Pablo Vicente-Munuera's code

#Maybe
#library("ergm.graphlets", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")

library(igraph)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/generateRandomNetworks.R', echo=TRUE)

#vertices <- 4561
#rEdges <- 7906 #Should verify this number: 7906 (suppose is the real one)
#The tunned one
edges <- 8015
r <- sqrt((edges*2)/(vertices*(vertices-1)*pi))

generateRandomNetworks(vertices = 4561, edges = 7906, rEdges = 8000, nameOfOriginal = "SCerevisiae")

generateRandomNetworks(vertices = 7621, edges = 24477, rEdges = 24477, nameOfOriginal = "Drosophila")

generateRandomNetworks(vertices = 2911, edges = 5123, rEdges = 5123, nameOfOriginal = "CElegans")

generateRandomNetworks(vertices = 2018, edges = 2930, rEdges = 2990, nameOfOriginal = "YeastAnother")

generateRandomNetworks(vertices = 4141, edges = 7686, rEdges = 7786, nameOfOriginal = "SCerevisiaeRefined")





# ---------------- Reading results ------------#

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/showGraphletCountInfo.R', echo=TRUE)

layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

geo2DGC <- read.csv(file = "data/geo2DGraphletsCount.txt", sep = "\t")
showGraphletCountInformation(geo2DGC, "Random geometric graph")

sf <- read.csv(file = "data/sfGraphletsCount.txt", sep = "\t")
showGraphletCountInformation(sf, "Random Scale free")

original <- read.csv(file = "data/graphletsCountsSaccharomyces.txt", sep = "\t")
showGraphletCountInformation(original, "S. Cerevisiae")

original1 <- read.csv(file = "data/drophilaGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(original1, "Drosophila")

original2 <- read.csv(file = "data/caenorhabditisElegansGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(original2, "C. Elegans")

originalRefined <- read.csv(file = "data/yeastRefinedGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(originalRefined, "S. Cerevisiae refined")

originalRefined <- read.csv(file = "data/yeastAnotherGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(originalRefined, "S. Cerevisiae another one")



