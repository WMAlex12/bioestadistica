########### Karel Alexis Vazquez Suarez


######## Cargar librerias ######## 
library(ggplot2)
# Almacenar el dataset en la variable data 


######### Ejercicio 1 ###########
# cargando en la variable naranja un histograma relleno 

data <- Orange
head (data)

# de la columna circunferencia

naranja <- hist (data$circumference, col = "#FFA500", 
                 main = "Histograma de la circunferencia de naranjas",
                 xlab = "Circunferencia")

# la variable main da titulo al plot dgenerado 
# xlab nombra el eje de las x

naranja # Ejecucion del histograma y se visualiza en la seccion de plot


####### Ejercicio 2 ######### 

data1 = mtcars # Almacenando el dataframe de mtcars en data1 
head (data1) # imprimiendo el encabezado del dataframe

# Se manda a llamar la funcion ggplot en donde se le dan los datos a utilizar
# para generar el plot 

dos <- ggplot(data1, aes (x = data1$mpg)) + 
# geom_histogram() es una instruccion de ggplot para especificar la grafica
# a utilizar, donde tambien se genera las configuraciones necesarias para el plot 
# como los son el intervalo, color del contorno y el relleno. 
  geom_histogram(binwidth = 1, color = "black", fill = "olivedrab1")

dos # Se imprime el grafico en plot

######## Ejercicio 3 ########


data2 = OrchardSprays # Almacenando el dataframe de mtcars en data2
head (data2) # imprimiendo el encabezado del dataframe

# Se manda a llamar la funcion ggplot en donde se le dan los datos a utilizar
# para generar el plot 
fig_3 <- ggplot(data2, aes (x = data2$decrease)) + 
  # geom_histogram() es una instruccion de ggplot para especificar la grafica
  # a utilizar, donde tambien se genera las configuraciones necesarias para el plot
  # como los son el intervalo, color del contorno y el relleno. 
  geom_histogram (binwidth = 5, color = "olivedrab1", fill = "#B452CD")

fig_3 # Se imprime el grafico en plot 

########## Ejercicio 4 ################

data3 = iris # Almacenando el dataframe de mtcars en data2
head(data3) # imprimiendo el encabezado del dataframe

# Se manda a llamar la funcion ggplot en donde se le dan los datos a utilizar
# para generar el plot 
bonito <- ggplot(data3, aes (x = data3$Sepal.Length)) + 
  # geom_histogram() es una instruccion de ggplot para especificar la grafica
  # a utilizar, donde tambien se genera las configuraciones necesarias para el plot 
  geom_histogram (fill = "white")

bonito # Se imprime el grafico en plot 

####### Ejercicio 5 ########

data4 = CO2 # Almacenando el dataframe de mtcars en data2
head(data4) # imprimiendo el encabezado del dataframe

# Se manda a llamar la funcion ggplot en donde se le dan los datos a utilizar
# para generar el plot 
cinco <- ggplot(data4, aes (x = data4$uptake)) + 
  # geom_histogram() es una instruccion de ggplot para especificar la grafica
  # a utilizar, donde tambien se genera las configuraciones necesarias para el plot 
  # como los son el intervalo, color del contorno y el relleno. 
  geom_histogram (binwidth =  2 , color = "#5F9EA0",  fill = "#FF7F50")

cinco # Se imprime el grafico en plot 


################################################################################
