#Pablo Vicente-Munuera's code

#Maybe
#library("ergm.graphlets", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")

library(igraph)

vertices <- 4561
rEdges <- 7906 #Should verify this number: 7906 (suppose is the real one)

#The tunned one
edges <- 8015

r <- sqrt((edges*2)/(vertices*(vertices-1)*pi))
#radius on the paper? They didn't say anything...

geometric <- grg.game(nodes = vertices, radius = r, torus = F) #Torus: F => square, T => a Torus

summary(geometric)

#http://rgm3.lab.nig.ac.jp/RGM/R_rdfile?f=igraph/man/static.power.law.game.Rd&d=R_CC
#They use exponent.out = 2.1 - 2.4
sf21 <- static.power.law.game (no.of.nodes = vertices, no.of.edges = rEdges, exponent.out = 2.1, exponent.in = -1, multiple = T)

eSf21 <- E(sf21) #edges time!


fileConn<-file("sfEdges.sf")
write.graph(sf21, file = "sfEdges.sf", format = "edgelist")
close(fileConn)

#BA model (scale-free)
#They use power = 2.1 - 2.4
#sf21 <- barabasi.game(n = vertices, power = 2.1, m = vertices/10, directed = F)




