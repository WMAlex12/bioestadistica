#################
# Primer Script #
# Karel Alexis  #
#################
## RStudio es 

##### Introduccion a R #######
## Citando a R ###
citation()
citation("datasets") ## Citar paquetes en particular

## Ayudas ##
help() ## Ayuda en general del programa
help (aov) ## Ayuda en particular de un paquete 
?aov
example("aov") ## Crea un ejemplo de la paqueteria

## Crear Objetos/Variables ## 
## Objetos por String 
name <- "karel"
name
## Objetos en vector
vector <- 0:20000000000000
vector
## Concatena los valores escritos entre los parentesis generando un vector 
## de strings 
nombres_hombres <- c("antonio", "josue", "karel", "juan")
nombres_hombres
mejores_amigos <- c("Esther","Cris")
mejores_amigos
## Objetos numericos
value1 <- 1
value1
value2 <- 2.1 
value2 
#Objetos booleanos
Verdadero <- TRUE 
Verdadero 
Falso <- FALSE 
Falso
## Imprimir objetos - funciones y variables
print (mejores_amigos)
print (vector)
?proc.time
t<- proc.time()
print (vector)
proc.time()-t 
## Tambien es valido para hacer una impresion con el nombre del objeto/funcion
## La diferencia entre

vector2 <- c(1:10, 100:2000)
vector2 
vector3 <- c("Mr. Robot", 1:10)
## Remover los objetos
rm () ## Remueve todos los objetos
rm(vector3) 


length(vector3) ## numero de elementos del objeto 
class(vector3) ## Da el tipo de numero
dim(vector) ##Funciona para obtener las dimensiones de una matriz


install.packages("ggplot2") ## Instalar paquetes 
library(ggplot2) # Cargar el paquete con todas sus funciones es 
                 # importante hacerlo cada vez que se abre la sesion

##Datasets 
## Ayuda para la libreria que mandes llamar
library(help = "datasets")
###Dos formas de trabajar datos
##Adjunta la base de datos
attach(ChickWeight)
##Desadjunta la base de datos
detach(ChickWeight)
## Imprime los primeros valores del dataset
head(ChickWeight) 
## Imprimer los ultimos datos del dataset
tail(ChickWeight)
## Nombres de las columnas del dataset 
names(ChickWeight)
## Estructura de un objeto 
str(ChickWeight)


Chicken <- ChickWeight
print(Chicken[4]) 

## PASAMOS A LAS DISTRIBUCIONES DE PROBABILIDAD 
## Intentamos con dieta, hacer una grafica llamada histograma 
# Histograma - grafica de distribucion de frecuencias 
hist(Chicken$Diet) # $ <- SIRVE PARA UBICAR LAS COLUMNAS DENTRO DEL DATASET
#Identificar el tipo de variable del dataset
class(Chicken$Diet)
##Tenemos que hacer COERCION
# Implicito e Implicito

## is.

## as. 


Diet <- as.integer(Chicken$Diet) ## Transforma los datos de la columna a numerico
hist(Diet) ##Histograma default


chick <- as.numeric(Chicken$Chick)
hist(chick) ## Distribucion de tipo -

Weight <- Chicken$weight
hist(Weight)

Time <- Chicken$Time
hist(Time)

##Col = color
hist(Weight, col = "#AA0012AA")




##########CLASE 10/09 #################
head(mtcars)

cars <- mtcars

hist(mtcars$wt, col = "#0e8aa1")

# Uso de ggplot2 # 
#Instalar libreria 
install.packages("ggplot2")

#cargar la libreria
library(ggplot2)


?ggplot2
## Es una serie de capas de informacion para generar la greafica
## Todas las graficas deben de guardarse en un objeto nuevo.

##aes = Estetica de como se vera la grafica 
## aes(x = El objeto que siempre se va a graficar)

Fig1 <- ggplot(cars, aes(x=cars$wt)) + 
  geom_histogram(binwidth=0.25, color = "#bfbc14", fill="#5e14bf")
##Geom_histogram(Ancho de las barras, color del contorno, relleno de las barras)
## Es el ancho de las barritas - sin binwidth R decide en cual utilizar 
###
print(Fig1)
densidad <- ggplot(cars, aes(x=cars$wt)) + 
  geom_density(alpha = 0.2, fill = "#bfbc14")


Fig2 <-  ggplot (cars, aes (x = cars$wt, fill = cars$gear)) + 
  geom_histogram ()
Fig2
  ## Graficacion la primer grafica en el mismo plot
  ## Grafica de densidad sobrepuesta 
Fig2

################Ahora utilizando Chick##############################

head(ChickWeight)

diet <- ggplot(ChickWeight, aes(x = ChickWeight$weight, fill = ChickWeight$Diet)) + 
  geom_histogram(binwidth=1, alpha=1, position="identity")
diet


