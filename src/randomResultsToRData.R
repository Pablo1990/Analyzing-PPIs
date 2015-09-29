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

save(resultsRRGCEle02, resultsRRGCEle02Reversed, resultsRRGCEle075, resultsRRGCEle075Reversed, resultsRRGDroso02, resultsRRGDroso02Reversed, resultsRRGDroso075, resultsRRGDroso075Reversed, resultsRRGSC02, resultsRRGSC02Reversed, resultsRRGSC075, resultsRRGSC075Reversed, file = "data/randomRRG_from_CEle_Droso_SC.RData")

#Ernesto's data
name <- "AfulgidusAdj"
resultsGeo2DAfuAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfAfuAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGAfuAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGAfuAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGAfuAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGAfuAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

name <- "BsubtilisAdj"
resultsGeo2DBsubAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfBsubAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGBsubAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGBsubAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGBsubAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGBsubAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

name <- "DrosophilaAdj"
resultsGeo2DDrosoAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfDrosoAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGDrosoAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGDrosoAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGDrosoAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGDrosoAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

name <- "EcoliAdj"
resultsGeo2DEcoliAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfEcoliAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGEcoliAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGEcoliAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGEcoliAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGEcoliAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

name <- "HpyroliAdj"
resultsGeo2DHpyroAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfHpyroAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGHpyroAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGHpyroAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGHpyroAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGHpyroAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


name <- "HumanAdj"
resultsGeo2DHumanAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfHumanAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGHumanAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGHumanAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGHumanAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGHumanAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


name <- "KSHVAdj"
resultsGeo2DKSHVAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfKSHVAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGKSHVAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGKSHVAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGKSHVAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGKSHVAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


name <- "MalariaAdj"
resultsGeo2DMalariaAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfMalariaAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGMalariaAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGMalariaAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGMalariaAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGMalariaAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


name <- "VZVAdj"
resultsGeo2DVZVAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfVZVAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGVZVAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGVZVAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGVZVAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGVZVAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

name <- "YeastSAdj"
resultsGeo2DYeastSAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfYeastSAdj <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGYeastSAdj02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGYeastSAdj02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGYeastSAdj075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGYeastSAdj075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


