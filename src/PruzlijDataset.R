#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/distanceBetweenGraphlets.R', echo=TRUE)



original <- read.csv(file = "data/YeastHighGC.txt", sep = "\t")
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