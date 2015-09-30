#Developed by Pablo Vicente-Munuera

source('~/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/src/lib/plotingResults.R', echo=TRUE)

plotingResults(title = "Malaria", 
               resultsGeo2D = resultsGeo2DMalariaAdj, 
               fileOriginal = "data/results/MalariaAdj.sifGC.txt",
               resultsSF = resultsSfMalariaAdj
              )