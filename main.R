#Developed by Pablo Vicente-Munuera

#Maybe
#library("ergm.graphlets", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")

library(igraph)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/generateRandomNetworks.R', echo=TRUE)

#vertices <- 4561
#rEdges <- 7906 #Should verify this number: 7906 (suppose is the real one)
#The tunned one
edges <- 8015
r <- sqrt((edges*2)/(vertices*(vertices-1)*pi))

nameSC <- "SCerevisiae"
rRRGSC <- 0.0158
generateRandomNetworks(vertices = 4561, edges = 7906, rEdges = 8000, rRRG = rRRGSC ,nameOfOriginal = nameSC)

nameDroso <- "Drosophila"
rRRGDroso <- 0.0165
generateRandomNetworks(vertices = 7621, edges = 24477, rEdges = 24477, rRRG = rRRGDroso, nameOfOriginal = nameDroso)

nameCEle <- "CElegans"
rRRGCEle <- 0.0199
generateRandomNetworks(vertices = 2911, edges = 5123, rEdges = 5123, rRRG = rRRGCEle, nameOfOriginal = nameCEle)

nameYeastA <- "YeastAnother"
rRRGYeA <- 0.0217
generateRandomNetworks(vertices = 2018, edges = 2930, rEdges = 2990, rRRG = rRRGYeA, nameOfOriginal = nameYeastA)

nameSCRevised <- "SCerevisiaeRevised"
rRRGSc <- 0.0171
generateRandomNetworks(vertices = 4141, edges = 7686, rEdges = 7786, rRRG = rRRGSc, nameOfOriginal = nameSCRevised)





# ---------------- Reading results ------------#

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/showGraphletCountInfo.R', echo=TRUE)

#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

geo2DGC <- read.csv(file = "data/geo2DGraphletsCount.txt", sep = "\t")
resultsGeo2D <- showGraphletCountInformation(geo2DGC, "Random geometric graph")

#http://statmethods.net/graphs/line.html
plot(resultsGeo2D, main = "Saccharomyces", xlab = "Type of graphlet", ylab = "Frequencies", type="l",col="red")

sf <- read.csv(file = "data/sfGraphletsCount.txt", sep = "\t")
resultsSF <- showGraphletCountInformation(sf, "Random Scale free")
lines(resultsSF, col="green")

original <- read.csv(file = "data/graphletsCountsSaccharomyces.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original, "S. Cerevisiae")
lines(resultsOriginal, col="blue")

original1 <- read.csv(file = "data/drophilaGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(original1, "Drosophila")

original2 <- read.csv(file = "data/caenorhabditisElegansGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(original2, "C. Elegans")

originalRefined <- read.csv(file = "data/yeastRefinedGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(originalRefined, "S. Cerevisiae refined")

originalRefined <- read.csv(file = "data/yeastAnotherGraphletCounter.txt", sep = "\t")
showGraphletCountInformation(originalRefined, "S. Cerevisiae another one")

# --------------------------------------

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/plotingResults.R', echo=TRUE)

plotingResults(title = "Saccharomyces", 
               fileGeo2D = "data/raw/randomGeo2DNetworkSCerevisiae.sifGC.txt", 
               fileOriginal = "data/raw/Y2H-SaccharomycesCerevisiae.txtGC.txt", 
               fileSF = "data/raw/randomSFNetworkSCerevisiae.sifGC.txt")

plotingResults(title = "C. Elegans", 
               fileGeo2D = "data/raw/randomGeo2DNetworkCElegans.sifGC.txt", 
               fileOriginal = "data/raw/Y2H-CaenorhabditisElegans.txtGC.txt", 
               fileSF = "data/raw/randomSFNetworkCElegans.sifGC.txt")


