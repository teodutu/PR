library("rgdal")
library("RColorBrewer")
library("sp")
library("GISTools")
library("classInt")
library("maptools")
library("SmarterPoland")

# install.packages("tidyr")
library("tidyr")
# install.packages("tidyverse")
library("tidyverse")
library("ggplot2")


ex_data = getEurostatRCV(kod = "cei_cie010")


print("========== Ex 1 ==========")
ex1_data = ex_data[-grep("EU[0-9]{2}.*", ex_data$geo), ]
head(ex1_data)


print("========== Ex 2 ==========")
ex2_uniq = unique(ex1_data$indic_sb)
ex2_data = spread(ex1_data, key = "indic_sb", value = "value")
head(ex2_data)


print("========== Ex 3 ==========")
ex3_data = rename(
	ex2_data,
	VFC_MilE = V12150,
	VFC_GDP = V12151,
	GITG_MilE = V15110,
	GITG_GDP = V15111,
	NPE = V16110,
	NPE_E = V16111
)
head(ex3_data)


print("========== Ex 4 ==========")
g = ggplot(ex3_data[ex3_data$time == "2014", ], aes(geo, NPE))
g = g + geom_bar(stat = "identity")
ggsave("plot_ex4.png")


print("========== Ex 5 ==========")
str(ex3_data)
ex5_data = mutate(ex3_data, time=as.numeric(as.character(time)))

g = ggplot(ex5_data[ex5_data$geo == "RO", ], aes(time, NPE_E))
g = g + geom_point() + geom_line()
ggsave("plot_ex5.png")


print("========== Ex 6 ==========")
g = ggplot(ex5_data, aes(time, NPE_E, group=time))
g = g + geom_boxplot()
ggsave("plot_ex6.png")
