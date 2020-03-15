# DBSCAN

# Cargando la data
read.arff('D:\\Programs\\Weka-3-9-4\\data\\example.arff')
data <- read.arff('D:\\Programs\\Weka-3-9-4\\data\\example.arff')
str(data)

# Instalando librerias 
library(fpc)
library(dbscan)
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/factoextra")
library(factoextra)

# Buscando el valor eps optimo
kNNdistplot(data, k=3)
abline(h=0.6,lty=2)


set.seed(123)
f <- fpc::dbscan(data, eps=0.6, Min = 4)
d <- dbscan::dbscan(data,0.45,4)

fviz_cluster(d, new, geom = "point")
