#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)

nameSC <- "SCerevisiae"
#resultsRRGSC <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameSC)
resultsGeo2DSC <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameSC)
resultsSfSC <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameSC)

#-- CElegans
nameCEle <- "CElegans"
#resultsRRGCEle <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameCEle)
resultsGeo2DCEle <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameCEle)
resultsSfCEle <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameCEle)

#--- Drosophila
nameDroso <- "Drosophila"
#resultsRRGDroso <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = nameDroso)
resultsGeo2DDroso <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = nameDroso)
resultsSfDroso <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = nameDroso)

resultsRRGSC02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02_"))
resultsRRGSC02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02Reversed_"))
resultsRRGSC075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075_"))
resultsRRGSC075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075Reversed_"))

nameSC <- "CElegans"
resultsRRGCEle02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02_"))
resultsRRGCEle02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02Reversed_"))
resultsRRGCEle075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075_"))
resultsRRGCEle075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075Reversed_"))

nameSC <- "Drosophila"
resultsRRGDroso02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02_"))
resultsRRGDroso02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "02Reversed_"))
resultsRRGDroso075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075_"))
resultsRRGDroso075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(nameSC, "075Reversed_"))
