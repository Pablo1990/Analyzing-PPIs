#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/distanceBetweenGraphlets.R', echo=TRUE)

#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

#-- SCerevisiae
nameSC <- "SCerevisiae"

resultsGeo2D <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameSC)
original <- read.csv(file = "data/results/Y2H-SaccharomycesCerevisiae.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2D)) #2.871464

resultsSf <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameSC)
print(distanceBetweenGraphlets(resultsOriginal, resultsSf)) #Not Yet!

resultsRRG <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameSC)
print(distanceBetweenGraphlets(resultsOriginal, resultsRRG)) #2.8688

#-- CElegans
nameCEle <- "CElegans"

resultsGeo2D <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameCEle)
original <- read.csv(file = "data/results/Y2H-CaenorhabditisElegans.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2D)) #2.226287

resultsSf <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameCEle)
print(distanceBetweenGraphlets(resultsOriginal, resultsSf)) #1.507073

resultsRRG <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameCEle)
print(distanceBetweenGraphlets(resultsOriginal, resultsRRG)) #2.226039

#--- Drosophila
nameDroso <- "Drosophila"

resultsGeo2D <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameDroso)
original <- read.csv(file = "data/results/Y2H-DrosophilaMelanogaster.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2D))

resultsSf <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameDroso)
print(distanceBetweenGraphlets(resultsOriginal, resultsSf))

resultsRRG <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameDroso)
print(distanceBetweenGraphlets(resultsOriginal, resultsRRG))