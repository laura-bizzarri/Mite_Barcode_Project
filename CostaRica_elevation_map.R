rm(list=ls())

library(raster)

alt <- getData('alt', country='Costa Rica')
adm <- getData('GADM', country='Costa Rica', leve=1)
mar<-(adm[adm$NAME_1=="La Selva",])
maralt<-crop(alt,mar)

persp(maralt, exp=0.2,phi=35, xlab="Longitude", ylab="Latitude", zlab="Elevation")
persp(maralt, exp=0.2,phi=35, xlab="Longitude", ylab="Latitude", zlab="Elevation", shade=0.01, col="green4")
