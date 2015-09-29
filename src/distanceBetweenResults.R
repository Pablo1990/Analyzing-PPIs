#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/showGraphletCountInfo.R', echo=TRUE)
source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/distanceBetweenGraphlets.R', echo=TRUE)

#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))

#-- SCerevisiae
nameSC <- "SCerevisiae"

original <- read.csv(file = "data/results/internet/Y2H-SaccharomycesCerevisiae.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC02)) 


print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC02Reversed)) 


print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC075)) 


print(distanceBetweenGraphlets(resultsOriginal, resultsRRGSC075Reversed)) 


print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DSC)) 


print(distanceBetweenGraphlets(resultsOriginal, resultsSfSC)) 
#-- CElegans
nameCEle <- "CElegans"

original <- read.csv(file = "data/results/internet/Y2H-CaenorhabditisElegans.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGCEle075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DCEle)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfCEle)) 

#--- Drosophila
nameDroso <- "Drosophila"

original <- read.csv(file = "data/results/internet/Y2H-DrosophilaMelanogaster.txtGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDroso075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DDroso)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfDroso))


#Ernesto's datasets

#----- Afulgidus
original <- read.csv(file = "data/results/AfulgidusAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGAfuAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGAfuAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGAfuAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGAfuAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DAfuAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfAfuAdj))

#----- BsubtilisAdj
original <- read.csv(file = "data/results/BsubtilisAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGBsubAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGBsubAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGBsubAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGBsubAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DBsubAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfBsubAdj)) 

#----- Drosophila
original <- read.csv(file = "data/results/DrosophilaAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDrosoAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDrosoAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDrosoAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGDrosoAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DDrosoAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfDrosoAdj)) 

#----- Ecoli
original <- read.csv(file = "data/results/EcoliAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGEcoliAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGEcoliAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGEcoliAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGEcoliAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DEcoliAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfEcoliAdj)) 

#----- Hpyroli
original <- read.csv(file = "data/results/HpyroliAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHpyroAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHpyroAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHpyroAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHpyroAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DHpyroAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfHpyroAdj)) 

#----- Human
original <- read.csv(file = "data/results/HumanAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHumanAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHumanAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHumanAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGHumanAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DHumanAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfHumanAdj)) 

#----- KSHV
original <- read.csv(file = "data/results/KSHVAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGKSHVAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGKSHVAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGKSHVAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGKSHVAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DKSHVAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfKSHVAdj))

#----- Malaria
original <- read.csv(file = "data/results/MalariaAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGMalariaAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGMalariaAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGMalariaAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGMalariaAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DMalariaAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfMalariaAdj))

#----- VZV
original <- read.csv(file = "data/results/VZVAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGVZVAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGVZVAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGVZVAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGVZVAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DVZVAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfVZVAdj))

#----- YeastS
original <- read.csv(file = "data/results/YeastSAdj.sifGC.txt", sep = "\t")
resultsOriginal <- showGraphletCountInformation(original)

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastSAdj02)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastSAdj02Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastSAdj075)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsRRGYeastSAdj075Reversed)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsGeo2DYeastSAdj)) 

print(distanceBetweenGraphlets(resultsOriginal, resultsSfYeastSAdj))

