# install.packages(c('rgdal', 'RColorBrewer', 'sp', 'GISTools', 'classInt',
# 	'maptools'))


library("rgdal")
library("RColorBrewer")
library("sp")
library("GISTools")
library("classInt")
library("maptools")
library("SmarterPoland")


unempData = getEurostatRCV(kod = "lfst_r_lfu3rt")

print("Average unemployment rate in area AT:")
mean(unempData$value[unempData$geo == "AT"])

print("Median of the unemployment rate in area AT1:")
median(unempData$value[unempData$geo == "AT1"])
