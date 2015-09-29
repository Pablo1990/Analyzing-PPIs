#Developed by Pablo Vicente-Munuera

library(igraph)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/generateRandomNetworks.R', echo=TRUE)

nameSC <- "SCerevisiae"
#rRRGSC <- 0.0158
generateRandomNetworks(vertices = 4561, edges = 7906, nameOfOriginal = nameSC)

nameDroso <- "Drosophila"
#rRRGDroso <- 0.0165
generateRandomNetworks(vertices = 7621, edges = 24477, nameOfOriginal = nameDroso)

nameCEle <- "CElegans"
#rRRGCEle <- 0.0199
generateRandomNetworks(vertices = 2911, edges = 5123, nameOfOriginal = nameCEle)

nameYeastA <- "YeastAnother"
#rRRGYeA <- 0.0217
generateRandomNetworks(vertices = 2018, edges = 2930, nameOfOriginal = nameYeastA)

nameSCRevised <- "SCerevisiaeRevised"
#rRRGSc <- 0.0171
generateRandomNetworks(vertices = 4141, edges = 7686, nameOfOriginal = nameSCRevised)

#Ernesto's datasets

name <- "AfulgidusAdj"
generateRandomNetworks(vertices = 32, edges = 38, nameOfOriginal = name)

name <- "BsubtilisAdj"
generateRandomNetworks(vertices = 84, edges = 98,  nameOfOriginal = name)

name <- "DrosophilaAdj"
generateRandomNetworks(vertices = 3039, edges = 3715, nameOfOriginal = name)

name <- "EcoliAdj"
generateRandomNetworks(vertices = 230, edges = 695, nameOfOriginal = name)

name <- "HpyroliAdj"
generateRandomNetworks(vertices = 710, edges = 1396, nameOfOriginal = name)

name <- "HumanAdj"
generateRandomNetworks(vertices = 2783, edges = 6438, nameOfOriginal = name)

name <- "KSHVAdj"
generateRandomNetworks(vertices = 50, edges = 122, nameOfOriginal = name)

name <- "MalariaAdj"
generateRandomNetworks(vertices = 229, edges = 604, nameOfOriginal = name)

name <- "VZVAdj"
generateRandomNetworks(vertices = 53, edges = 160, nameOfOriginal = name)

name <- "YeastSAdj"
generateRandomNetworks(vertices = 2224, edges = 7049, nameOfOriginal = name)
