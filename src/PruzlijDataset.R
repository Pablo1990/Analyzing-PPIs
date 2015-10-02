#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/distanceBetweenGraphlets.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/plotingResults.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/generateRandomNetworks.R', echo=TRUE)
library(igraph)

#---Dataset: YeastHigh (Von Mering 2002)
original <- read.csv(file = "data/results/YeastHigh.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

nameSC <- "YeastHigh"
#rRRGSC <- 0.0158
generateRandomNetworks(vertices = 933, edges = 2347, nameOfOriginal = nameSC)

name <- "YeastHigh"
resultsGeo2DYeastHigh <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfYeastHigh <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGYeastHigh02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGYeastHigh02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGYeastHigh075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGYeastHigh075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))


#----- YeastS
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastHigh02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastHigh02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastHigh075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastHigh075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DYeastHigh)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfYeastHigh))



plotingResults(title = "Yeast Pruzlj", 
               resultsGeo2D = resultsGeo2DYeastHigh, 
               fileOriginal = "data/results/YeastHigh.sifGC.txt",
               resultsSF = resultsSfYeastHigh
)

#---Datasets: YeastLow
#edges: 
#vertices: 

name <- "YeastLow"
generateRandomNetworks(vertices = , edges = , nameOfOriginal = name)

resultsGeo2DYeastLow <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfYeastLow <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGYeastLow02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGYeastLow02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGYeastLow075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGYeastLow075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastLow02)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastLow02Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastLow075)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastLow075Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DYeastLow)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsSfYeastLow))

#---Datasets: Yeast2010 (Aranda B, 2010)
#edges: 76185
#vertices: 5206

name <- "Yeast2010"
generateRandomNetworks(vertices = 5206, edges = 76185, nameOfOriginal = name)

resultsGeo2DYeast2010 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfYeast2010 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGYeast201002 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGYeast201002Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGYeast2010075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGYeast2010075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeast201002)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeast201002Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeast2010075)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeast2010075Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DYeast2010)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsSfYeast2010))

#---Datasets: FlyHigh (Giot - 2003)
#edges: 3670
#vertices: 2274

name <- "FlyHigh"
generateRandomNetworks(vertices = 2274, edges = 3670, nameOfOriginal = name)

original <- read.csv(file = "data/przulj/raw/FlyHigh.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

resultsGeo2DFlyHigh <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfFlyHigh <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGFlyHigh02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGFlyHigh02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGFlyHigh075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGFlyHigh075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyHigh02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyHigh02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyHigh075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyHigh075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DFlyHigh)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfFlyHigh))

#---Dataset: FlyLow (Giot - 2003) - Entire
#edges: 12074
#vertices: 3149

name <- "FlyLow"
generateRandomNetworks(vertices = 3149, edges = 12074, nameOfOriginal = name)

original <- read.csv(file = "data/przulj/raw/FlyLow.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

resultsGeo2DFlyLow <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfFlyLow <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGFlyLow02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGFlyLow02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGFlyLow075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGFlyLow075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyLow02)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyLow02Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyLow075)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGFlyLow075Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DFlyLow))
print(distanceBetweenGraphlets(resultsOriginal, resultsSfFlyLow))

#---Dataset: Yu_GoldStd (Yu H. - 2008) - High confindence
#edges: 1322
#vertices: 700

name <- "Yu_GoldStd"
generateRandomNetworks(vertices = 700, edges = 1322, nameOfOriginal = name)

original <- read.csv(file = "data/przulj/raw/Yu_GoldStd.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

resultsGeo2DYu_GoldStd <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomGeo2DNetwork", nameOfOriginal = name)
resultsSfYu_GoldStd <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomSFNetwork", nameOfOriginal = name)
resultsRRGYu_GoldStd02 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02_"))
resultsRRGYu_GoldStd02Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "02Reversed_"))
resultsRRGYu_GoldStd075 <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075_"))
resultsRRGYu_GoldStd075Reversed <- showGraphletCountInformationFromRandom(fileNameStart = "data/przulj/results/randomRRGNetwork", nameOfOriginal = paste0(name, "075Reversed_"))

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYu_GoldStd02)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYu_GoldStd02Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYu_GoldStd075)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYu_GoldStd075Reversed)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DYu_GoldStd)) 
print(distanceBetweenGraphlets(resultsOriginal, resultsSfYu_GoldStd))
