#setting a working directory 
setwd("~/Dropbox/Research/Beetle_Mites")

#clearing everyhting off of workspace
rm(list = ls())

library(ggmap)

#importing location data as a csv file with coordinates
dat <- read.csv("elevation_map_data.csv")

#Costa Rica map
map<-get_map(location='costa rica', zoom=9,source='google',maptype='hybrid')
ggmap(map) +
  geom_point(data=dat, aes(x=decimalLongitude, y=decimalLatitude), color = 'yellow', size = 3)


#World map
map<-get_map(location='world', zoom=4,source='google',maptype='hybrid')
ggmap(map) +
  geom_point(data=dat, aes(x=decimalLongitude, y=decimalLatitude), color = 'yellow', size = 3)

