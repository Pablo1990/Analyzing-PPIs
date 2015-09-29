#Developed by Pablo Vicente-Munuera

#Another script:
#cut -f1,3- Y2H-CaenorhabditisElegans.sif > Y2H-CaenorhabditisElegans.txt
#cut -f1,3- Y2H-DrosophilaMelanogaster.sif > Y2H-DrosophilaMelanogaster.txt

#---------------------

cd /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/software/GraphletCounter-1.2/bin
		
#./gc.sh /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/data/Y2H-SaccharomycesCerevisiae.txt -all > originalGraphletsCount.txt

#SFNetwork
#./gc.sh /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/data/randomSFNetwork.sif -all > sfGraphletsCount.txt

#geo2D
#./gc.sh /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/data/randomGeo2DNetwork.sif -all > geo2DGraphletsCount.txt

for file in /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/data/raw/*
do
	echo "Counting graphlets of $file"
	./gc.sh $file -all > "${file}GC.txt"
done

cd /Users/pablovm1990/Documents/Dropbox/MScBioinformatics/Thesis/Project/Analyzing-PPIs/data/raw
mv *GC.txt ../results/