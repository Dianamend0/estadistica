
# Nube de palabras 

# Nube de palabras para el trabajo de investigación de la 
# academia de primer grado, integradas por: Monserrat Almora, 
# Valeria Carrasco, Aída López, Diana Mendoza y Yejyejsi Ramírez 


#1.- Instalar paqueterias y abrir librerias
install.packages("tidytext")
library(tidytext)
install.packages("wordcloud")
library(wordcloud)
install.packages("dplyr")
library(dplyr)
install.packages("csv")
library(csv)

# Subcategoría 1. Metodologías utilizadas para la enseñanza de 
# la lectoescritura en primer grado de primaria 

#1.- Se exporta la matriz de datos con extención .csv 
textos3<-read.csv("P3y4.csv")
head(textos3)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stopwordsP1.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq3 <- textos3 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq3)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq3$word,
          freq = word_freq3$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)

# Subcategoría 2. Importancia de la lectoescritura en primer 
# grado de primaria

# 1.- Se exporta la matriz de datos con extención .csv 
textos1<-read.delim("P1.csv")
head(textos1)

# 2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.delim("stopwordsP1.csv")
View(stop_words)

# 3.- limpieza y generacion de nuevo texto

word_freq1 <- textos1 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words1, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq1)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

# 4.- Creacion de nube de palabras
wordcloud(words = word_freq1$word,
          freq = word_freq1$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)

# Subcategoría 3. Desafíos de la enseñanza de la lectoescritura

#1.- Se exporta la matriz de datos con extención .csv 
textos4<-read.csv("P5.csv")
head(textos4)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stopwordsP1.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq4 <- textos4 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq4)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq4$word,
          freq = word_freq4$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)
# Categoría 4. Enfoque de la Nueva Escuela Mexicana

#1.- Se exporta la matriz de datos con extención .csv 
textos2<-read.csv("P2.csv")
head(textos2)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stopwordsP1.csv")
View(stop_words)

#3.- Instalar paqueterias y abrir librerias
library(tidytext)
library(wordcloud)
library(dplyr)

#4.- limpieza y generacion de nuevo texto

word_freq2 <- textos2 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq2)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#5.- Creacion de nube de palabras
wordcloud(words = word_freq2$word,
          freq = word_freq2$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)

# Subcategoría 5. Relación de los campos formativos de la 
# Nueva Escuela Mexicana con la enseñanza de la lectoescritura.

#1.- Se exporta la matriz de datos con extención .csv 
textos5<-read.csv("P6.csv")
head(textos5)

#2.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read.csv("stopwordsP1.csv")
View(stop_words)

#3.- limpieza y generacion de nuevo texto

word_freq5 <- textos5 %>%
  unnest_tokens(output = word,
                input = texto,
                token = "words",
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq5)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#4.- Creacion de nube de palabras
wordcloud(words = word_freq5$word,
          freq = word_freq5$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("Green","blue", "pink", "red"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)