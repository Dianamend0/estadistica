
## Distribuciones

#Distribución binomial

#Ejemplo 1:

#Suponga que hay doce preguntas de opción múltiple en un
#examen de matemáticas. Cada pregunta tiene cinco posibles respuestas
#y sólo una de ellas es correcta. Encuentre la probabilidad 
#de tener cuatro o menos respuestas correctas si un estudio
#intenta responder a cada pregunta al azar.

#Solución para que saque 4 respuestas correctas:

#Dado que sólo una de cada cinco respuestas posibles es
#correcta la probabilidad de responder correctamente una
#pregunta al azar es de 1/5= 0.2. Podemos encontrar la 
#probabilidad de tener exactamente 4 respuestas correctas 
#por intentos aleatorios de la siguiente manera:

# 1. Probabilidad de escoger una respuesta de 5 posibles 
p<-1/5

# 2. Espacio muestral (12 preguntas en total)
n<-12

# 3. Probabilidad de tener 4 respuestas correctas elegidas 
#aleatoriamente
k<-4

#Función en R
dbinom(k,n, 0.2)
dbinom(4,12, 0.2)

#Ejemplo de cómo realizar un gráfico de la distribución normal

# 1. Rejilla de valores del eje X, **x=80**. Se van a utilizar el
# mismo de valor de "x", de "n" y la probabilidad es la que va a ir
#cambiando, en esta ocasión se ocuparán las probabilidades de 
#**0.2, 0.3 y 0.4**. Además de poner la leyenda.

x<- 1:80
plot(dbinom(x, size = 80, prob = 0.2),
     type = "h", lwd = 2,
     main = "Función de probabilidad binomial",
     ylab = "P(X = x)", xlab = "Número de exitos")

lines(dbinom(x, size = 80, prob = 0.3),
      type = "h",
      lwd = 2, col = rgb(1,0,0, 0.7))

lines(dbinom(x, size = 80, prob = 0.4),
      type = "h",
      lwd = 2, col = rgb(0, 1, 0, 0.7))

legend("topright",legend =c("80 0.2", "80 0.3", "80 0.4"),
       title = "n p", title.adj = 0.85,
       lty = 1, col = 1:3, lwd = 2, box.lty = 0) 

# Ejercicio de cómo realizar nuestro gráfico la distribución binomial

# x = 4

# size = 12

# probabilidad = 0.2

#x= 4

# size = 12

# propabilidad = 0.2 

x <- 4
plot(dbinom(4, size = 12, prob = 0.2), type = "h", lwd = 2,
     main = "Función de probabilidad binomial",
     ylab = "P(X = x)", xlab = "Número de éxitos")

legend("topright", legend = c("12  0.2"),
       title = "n     p", title.adj = 0.85,
       lty = 1, col = 1:3, lwd = 2, box.lty = 1)

#Ejemplo 2:*
#Suponga que hay doce preguntas de opción múltiple en un 
#examen de matemáticas. Cada pregunta tiene cinco posibles
#respuestas, y sólo una de ellas es correcta. Encuentre la
#probabilidad de tener cuatro o menos respuestas correctas si
#un estudiante intenta responder a cada pregunta al azar.
#Solución 2: Para que saque una respuesta o menos correcta*
#Para encontrar la probabilidad de tener cuatro o menos respuestas
#correctas de forma aleatoria se utiliza la función dbinom con 
#k=0,1,2,3,4.
#1.- La forma sencilla de calcular la probabilidad

sum(dbinom(0:4, 12, 0.2))


#2.- Código para realizar nuestro gráfico de la distribución
#binomial. 

#NOTA 1:* Se pone la leyenda en el centro del gráfico, 
#buscando la manera en la que no se pierda ningún dato. 

#NOTA 2:* Se ponen ambos códigos de manera conjunta para 
#que la leyenda salga junto con el gráfico. 

x <- 0:4
plot(dbinom(0:4, size = 12, prob = 0.2), type = "h", lwd = 2,
     main = "Función de probabilidad binomial 2",
     ylab = "P(X = x)", xlab = "Número de éxitos")

legend("center", legend = c("12  0.2"),
       title = "n     p", title.adj = 0.85,
       lty = 1, col = 1:3, lwd = 3, box.lty = 1)

# Ejercicios:
#1.- ¿Cuál es la probabilidad de que 2 o 3 preguntas sean
#respondidas correctamente? (Continuación del ejercicio anterior)
#a) Forma fácil y rápida 

sum(dbinom(2:3, 12, 0.2))


#b) Forma tardada 


dbinom(2, 12, 0.2)
dbinom(3, 12, 0.2)


#c) Código para realizar nuestro gráfico de la distribución binomial


x <- 2:3
plot(dbinom(2:3, size = 12, prob = 0.2), type = "h", lwd = 2,
     main = "Función de probabilidad binomial 3",
     ylab = "P(X = x)", xlab = "Número de éxitos")

legend("topright", legend = c("12  0.2"),
       title = "n     p", title.adj = 0.85,
       lty = 1, col = 1:3, lwd = 3, box.lty = 1)

#2.- Supongamos que la empresa Apple fabricó el Iphone 11S
#con una probabilidad de 0.005 de ser defectuoso. El producto se 
#envía en una caja que contiene 25 artículos. ¿Cuál es la 
#probabilidad de que una caja elegida al azar contenga un Iphone
#11S defectuoso?
#1. Probabilidad general = 0.005
#2. Probabilidad de que salga un celular defectuoso en la caja


p<-1/25


#3. Espacio muestral 

n<-25


#4. Probabilidad de que salga el teléfono defectuoso

k<-1


#5. Función en R:  dbinom(k, n, p)


dbinom(1, 25, 0.040)


#6.- Código para realizar nuestro gráfico de la distribución
#binomial. 
#*NOTA:* La leyenda se cambia de lugar para que no se 
#tape ningún dato

x <- 1
plot(dbinom(1, size = 25, prob = 0.040), type = "h", lwd = 2,
     main = "Función de probabilidad binomial 4",
     ylab = "P(X = x)", xlab = "Número de éxitos")

legend("topleft", legend = c("25  0.040"),
       title = "n     p", title.adj = 0.85,
       lty = 1, col = 1:3, lwd = 3, box.lty = 1)

#Distribución Poisson

#*Ejemplo de cómo realizar un gráfico de distribución Poisson* 
#Rejilla de valores del eje X, *x=0:50. Se van a utilizar el 
#mismo de valor de "x", y lambda es la que va a ir cambiando,
#en esta ocasión se ocuparán valores de **5, 10 y 20*. Además
#de poner la leyenda. 

x <- 0:50
plot(dpois(x, 5), type = "h", lwd = 2,
     main = "Función de masa de probabilidad",
     ylab = "P(X = x)", xlab = "Número de eventos")

lines(dpois(x, 10), type = "h", lwd = 2, 
      col = rgb(1,0,0, 0.7))

lines(dpois(x, 20), type = "h", lwd = 2, 
      col = rgb(0, 1, 0, 0.7))

legend("topright", legend = c("5", "10", "20"),
       title = expression(lambda), title.adj = 0.75,
       lty = 1, col = 1:3, lwd = 2, box.lty = 0)





#*Ejemplos a desarrollar:*
#Suponga que se desea saber el número de llegadas de los
#estudiantes de una Escuela Primaria en un lapso de 15 minutos
#a la entrada de la escuela. Se puede suponer que la probabilidad
#de llegada de los estudiantes es la misma que cualquiera de los
#dos lapsos con la misma dirección siendo estas independientes
#a que llegue o no el estudiante. El número promedio de alumnos 
#que llegan en un lapso de 15 minutos son 35. Para optimizar la 
#llegada de los estudiantes evitando las aglomeraciones se requiere
#saber la probabilidad de que lleguen 50 alumnos en 15 minutos.

#1.- Probabilidad de que 35 alumnos lleguen en 15 minutos a la
#entrada de la escuela

#x= número de alumnos = 35

#lamda= tiempo de llegada = 15

x=35
lamda=15
dpois(x,lamda)


#b) Gráfico junto con la leyenda

plot(dpois(0:35, 15), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson",
     ylab = "P(X = x)", xlab = "Número de eventos")

legend("topright", legend = c("15"), 
       title = expression(lambda), title.adj = 0.75,lty = 1, 
       col = 1:3, lwd = 2, box.lty = 1)



#2.- Probabilidad de que 50 alumnos lleguen en 15
#minutos a la entrada de la escuela

#x= número de alumnos = 50

#lamda= tiempo de llegada = 15

x=50
lamda=15
dpois(x,lamda)

#b) Gráfico y leyenda 

plot(dpois(0:50, 15), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson 2",
     ylab = "P(X = x)", xlab = "Número de eventos")

legend("topright", legend = c("15"), 
       title = expression(lambda), title.adj = 0.75,lty = 1, 
       col = 1:3, lwd = 2, box.lty = 1)


#Ejercicios
#1.- ¿Cuál es la probabilidad de que a la escuela 
#lleguen 34 alumnos en 5 minutos?
#a) Probabilidad de que 34 alumnos lleguen en 5 minutos
#a la entrada de la escuela
#x= número de alumnos = 34
#lamda= tiempo de llegada = 5


x=34
lambda=5
dpois(x,lamda)


#b) Gráfico con su leyenda  

x <- 34 
plot(dpois(0:34, 5), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson 3",
     ylab = "P(X = x)", xlab = "Número de eventos")

legend("topright", legend = c("5"), 
       title = expression(lambda), title.adj = 0.75,lty = 1,
       col = 1:3, lwd = 2, box.lty = 1)


#2.- ¿Cuál es la probabilidad de que a la salida de la escuela,
#se encuentren 60 alumnos en 5 minutos?
#a) Probabilidad de que 60 alumnos salgan en 5 minutos a la 
#salida de la escuela
#x= número de alumnos = 60 
#lamda= tiempo de llegada = 5

x=60
lamda=5
dpois(x,lamda)

#b) Gráfico y leyenda

plot(dpois(0:60, 5), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson 4",
     ylab = "P(X = x)", xlab = "Número de eventos")

legend("topright", legend = c("5"), title = expression(lambda),
       title.adj = 0.75,lty = 1, col = 1:3, lwd = 2, 
       box.lty = 1)



#3.- ¿Cuál es la probabilidad de que a la salida de la escuela,
#se encuentren 120 alumnos en 5 minutos?
#a) Probabilidad de que 120 alumnos salgann en 5 minutos
#a la salida de la escuela
#x= número de alumnos = 120
#lamda= tiempo de llegada = 5

x=120
lamda=5
dpois(x,lamda)


#b) Gráfico con su leyenda 

plot(dpois(0:120, 5), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson 5",
     ylab = "P(X = x)", xlab = "Número de eventos")

legend("topright", legend = c("5"), title = expression(lambda),
       title.adj = 0.85,lty = 1, col = 1:3, lwd = 2, 
       box.lty = 1)

#Gráfico para que esten todas las distribuciones juntas

#Se realiza un gráfico en el que se junten las distribuciones, sin embargo se debe modificar el valor de lambda para que se pueda observar bien el gráfico, pero el valor de "x" sigue igual, además de que la leyenda también cambia. 


plot(dpois(0:120, 5), type = "h", lwd = 2,
     main = "Función de probabilidad de Poisson 6",
     ylab = "P(X = x)", xlab = "Número de eventos")

lines(dpois(0:60, 10), type = "h", lwd = 3, 
      col = rgb(1,0,0, 0.7))

lines(dpois(0:34, 20), type = "h", lwd = 4, 
      col = rgb(0, 1, 0, 0.7))

legend("topright", legend = c("5", "10", "20"),
       title = expression(lambda), title.adj = 0.75,
       lty = 1, col = 1:3, lwd = 2, box.lty = 0)


