#cargamos librery para graficar
library(ggplot2)
# visualizamos datos del dataFrame
head(diamonds)
# hacemos un plot  la variable carat vs la variable price
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
# casi tiene 54,000 ROWS , por lo que pintar esa cantidad de puntos en impresora en muy caro.
dim(diamonds)

## la graficas en forma de ERRADA (de tipo araña donde se muestran variables de las columnas , 
#  representadas en una escala de max a min valor)
library(fmsb)
#  vamos a quedarnos solo con una row, con todas las  observaciones
#  Pero de las columnas (VARIABLES) vamos a quitar de la 1 a la 4 (porque son variables que no nos interesan), quedandonos con el resto.
data <- diamonds[c(1:1), -(1:4)]
# 1 entrada con 6 variables con un max y min. 
data
# con el metodo rbind uniremos las filas de los valores repetidos en cada columna
data <-rbind(rep(400,5) , rep(0,5), data)
data
radarchart(data)
