#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/plotingResults.R', echo=TRUE)

plotingResults(title = "Saccharomyces", 
               fileGeo2D = "data/raw/randomGeo2DNetworkSCerevisiae.sifGC.txt", 
               fileOriginal = "data/raw/Y2H-SaccharomycesCerevisiae.txtGC.txt", 
               fileSF = "data/raw/randomSFNetworkSCerevisiae.sifGC.txt")

plotingResults(title = "C. Elegans", 
               fileGeo2D = "data/raw/randomGeo2DNetworkCElegans.sifGC.txt", 
               fileOriginal = "data/raw/Y2H-CaenorhabditisElegans.txtGC.txt", 
               fileSF = "data/raw/randomSFNetworkCElegans.sifGC.txt")