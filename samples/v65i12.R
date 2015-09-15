##############################################################################
# 1 -- Install the ergm.graphlets package from CRAN
##############################################################################
## install.packages("ergm.graphlets", repos="http://CRAN.R-project.org")
library("ergm.graphlets")


##############################################################################
# 2 -- Code for Case Study 1: Modelling Lake Pomona Network
##############################################################################

# Load the data
data("emon3", package = "ergm.graphlets")

# Estimate the ERGM
emon.ergm <- ergm(emon.3 ~ edges + nodefactor("Sponsorship") + nodecov("Command.Rank.Score") +
  grorbitFactor("Location", c(9:11)), control = control.ergm(seed = 1, MCMC.samplesize = 50000,
  MCMC.interval = 100000, MCMC.burnin = 50000, parallel = 60))
summary(emon.ergm)

# Test GOF for the estimated model
EMONgof <- gof(emon.ergm, GOF = ~ degree + distance + espartners + triadcensus)
par(nfrow = c(2, 2))
plot(EMONgof)


##############################################################################
# 3 -- Code for Case Study 2: Modelling Protein secondary structure network
##############################################################################

# Load the data
data("spi", package = "ergm.graphlets")

# Estimate the first ERGM
spi.ergm.34678 <- ergm(spi ~ edges + nodematch("Assembly") + triangle("Assembly") +
  gwdegree(.5, fixed = T), graphletCount(c(3, 4, 6, 7, 8)), 
  control = control.ergm(seed = 1, MCMC.samplesize = 500000, MCMC.interval = 75000, 
  MCMC.burnin = 300000, parallel = 60))
summary(spi.ergm.34678)

# Estimate the second ERGM
spi.ergm.all <- ergm(spi ~ edges + nodematch("Assembly") + triangle("Assembly") + 
  gwdegree(.5, fixed = T) + graphletCount(c(6, 7, 8)), 
  control = control.ergm(seed = 1, MCMC.samplesize = 15000, MCMC.interval = 2000, 
  MCMC.burnin = 15000) )
summary(spi.ergm.all)

# Test GOF for the estimated model
PSNgof <- gof(spi.ergm.all, GOF = ~ degree + distance + espartners + triadcensus)
par(nfrow = c(2, 2))
plot(PSNgof)
