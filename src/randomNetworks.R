#Developed by Pablo Vicente-Munuera

library(igraph)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/generateRandomNetworks.R', echo=TRUE)

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