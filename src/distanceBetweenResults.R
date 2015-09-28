#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/distanceBetweenGraphlets.R', echo=TRUE)

#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

#-- SCerevisiae
nameSC <- "SCerevisiae"

original <- read.csv(file = "data/results/Y2H-SaccharomycesCerevisiae.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC02)) #2.879854

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC02Reversed)) #2.872022

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC075)) #2.873448

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC075Reversed)) #2.87987

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DSC)) #2.871464

print(distanceBetweenGraphlets(resultsOriginal, resultsSfSC)) #1.789

#-- CElegans
nameCEle <- "CElegans"

original <- read.csv(file = "data/results/Y2H-CaenorhabditisElegans.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle02)) #2.232936

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle02Reversed)) #2.227413

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle075)) #2.230938

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle075Reversed)) #2.237951

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DCEle)) #2.226287

print(distanceBetweenGraphlets(resultsOriginal, resultsSfCEle)) #1.507073

#--- Drosophila
nameDroso <- "Drosophila"

original <- read.csv(file = "data/results/Y2H-DrosophilaMelanogaster.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso02)) #2.237508

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso02Reversed)) #2.232968

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso075)) #2.231536

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso075Reversed)) #2.244014

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DDroso)) #2.232323

print(distanceBetweenGraphlets(resultsOriginal, resultsSfDroso)) #0.9745856