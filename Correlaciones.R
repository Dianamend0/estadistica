

# Coeficiente de correlación de Pearson

#Para datos con distribuciones normal

#Área: Estadística Paramétrica

#Utilizamos la matriz "penguins.xlsx"


#1.- Instalación de paquetería

install.packages("readxl")

#Abrimos libreria

library("readxl")


#2.- Exportación de la matriz de datos 

penguins<-read_excel("penguins.xlsx")


#2.1.-Nombre de las columnas

#Para conocer el nombre de las columnas de nuestra base
#de datos, se ocupa:
#  **colnames(BD)**

colnames(penguins)

#3.- Exploración de la matriz 

#3.1.- Dimensión de la matriz

#Se utiliza el siguiente comando para saber
#la dimensión de la matriz: **dim(BD)**

dim(penguins)

#4.- Tipo de variables

#Para observar las variables y el tipo, que tenemos ocupamos
# **str(penguins)**

str(penguins)

#5.- En busca de datos perdidos

#Buscamos si tenemos datos perdidos o no con 
# **anyNA(penguins)**

anyNA(penguins)

# Para sacar el coeficiente de correlación de Pearson

#1.- Seleccionamos las variables que vayamos a correlacionar,
#ocupamos: 
# **str(penguins)**
#  **penguins$especie**

str(penguins)
penguins$especie

#2.- Se seleccionan las filas 1 a la 61, que corresponden a la 
#especie Adeli y las variables cuantitativas.
# **adeli<-penguins[1:61,4:7]**

adeli<-penguins[1:61,4:7]

#3.- Visualización de la matriz

#Para poder vizualizar nuestro objeto

adeli

#4.- Generación del gráfico de correlación
# **plot(adeli)**

plot(adeli)

#5.- Cálculo de la correlación de Pearson
# **cor(adeli)**

cor(adeli)

#6.- Organización visual de la tabla de correlaciones

# 6.1.- Se genera un nuevo objeto con el nombre de pearson,
#es decir, 

pearson<-cor(adeli)

#6.2.- Se abre la librería knitr

library(knitr)

#6.3.- Se utiliza la funcion kable

kable(pearson)

# Coeficiente de correlación de Spearman

#Para datos con distribucion NO Normal

#Área: Estadistica NO Paramétrica

#Se utiliza la matriz marvel_dc.csv

#1.- Exportación de la matriz de datos 

marvel_dc<-read_excel("marvel_dc.xlsx")

#2.- Exploración de la matriz 

#2.1.- Dimensión de la matriz

#Se utiliza el siguiente comando para saber
#la dimensión de la matriz:
#  **dim(BD)**

dim(marvel_dc)

#2.2.- En busca de datos perdidos

#Buscamos si tenemos datos perdidos o no con 
# **anyNA(BD)**

anyNA(marvel_dc)

#3.- Tipo de variables

#Para identificar las variables cuantitativas
# **str(BD)**

str(marvel_dc)

#4.- Para saber el nombre y posición de la variable ocupamos:
#  **colnames(BD)**

colnames(marvel_dc)

#5.- Seleccionamos las variables:
#  rate, minutos, budget y gross.worldwide, con:
#  **marvel<-marvel_dc[,c(4,6,8,11)]**
#  *Nota: elegimos columnas nuevas, debido a que la número 4 
#y la 6 son carácteres y necesitamos utilizar numéricas

#Ocuparemos las variables:
#  rate, metascore, gross USA y gross Worldwide

marvel<-marvel_dc[,c(4,5,10,11)]

#6.- Verificar que el nombre de las variables 
#esten correctas utilizando:
#  **colnames(marvel)**

colnames(marvel)

#7.- Realizar un plot de exploración con:
#  **plot(marvel)**

plot(marvel)

#8.- Realizar la correlación de spearman con:
#  **spearman<-cor(marvel, method = "spearman")**

spearman<-cor(marvel,method="spearman")

#9.- Vizualizar el objeto 

spearman 

#9.2.- Se abre la librería knitr

library(knitr)

#10.- Se utiliza la funcion kable para tabla en 
#formato markdown.
# **kable(spearman)**

kable(spearman)





