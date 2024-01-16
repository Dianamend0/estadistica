

# Combinaciones y permutaciones

# Instalación de paquetería

# 1. Instalar paquetería **gtools**

install.packages("gtools")

# 2. Abrir librería

library(gtools)

# COMBINACIONES

# 1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar
# en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos

# n = 2 - Grupos de 2 en 2

N <- 100
n <- 2

# 2. Determinar que vayan los números con ID número
# consecutivo. En esta ocasión, el objeto se llamará
# "alumnos".

alumnos <- c(1:N)

## Cómo sacar las combinaciones

# 1. Nombrar un objeto llamado "combinaciones", utilizando
# **N**, **n** y **alumnos** y la función 
# **combinations**

combinaciones <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones

head(combinaciones)

# 3. Las últimas combinaciones

tail(combinaciones)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones)

# 5. Utilizando la fórmula
# **factorial(N) / (factorial(n) * (factorial(N-n)))**
# debe salir el mismo número que en el código anterior

factorial(N) / (factorial(n) * (factorial(N-n)))

# Mi ejercicio

# 1. Se van a formar equipos de 5 integrantes con
# los alumnos de quinto grado de la escuela
# primaria "Lázaro Cárdenas del Río" de Banderilla.
# En total se tienen 20 alumnos.

# N = 20 - Número de elementos

# n = 5 - Grupos de 5 integrantes

N <- 20
n <- 5

# 2. Determinar que vayan los números con ID número
# consecutivo. En esta ocasión, el objeto se llamará
# "alumnos".

alumnos <- c(1:N)

## Cómo sacar las combinaciones

# 1. Nombrar un objeto llamado "combinaciones", utilizando
# **N**, **n** y **alumnos** y la función 
# **combinations**

combinaciones2 <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones

head(combinaciones2)

# 3. Las últimas combinaciones

tail(combinaciones2)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones2)

# 5. Utilizando la fórmula
# **factorial(N) / (factorial(n) * (factorial(N-n)))**
# debe salir el mismo número que en el código anterior

factorial(N) / (factorial(n) * (factorial(N-n)))

# PERMUTACIONES

# 1. Ejemplo: Tenemos 100 estudiantes y se quieren agrupar
# en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos

# n = 2 - Grupos de 2 en 2

N <- 100
n <- 2

# 2. Determinar que vayan los números con ID número
# consecutivo. En esta ocasión, el objeto se llamará
# "alumnos".

alumnos <- c(1:N)

## Sacar las permutaciones

# 1. Nombrar un objeto llamado "permutaciones", utilizando
# **N**, **n** y **alumnos** y la función **permutations**.

permutaciones <- permutations(N, n, alumnos)

# 2. Las primeras permutaciones

head(permutaciones)

# 3. Las últimas permutaciones

tail(permutaciones)

# 4. ¿Cúantas permutaciones se tiene en total?

nrow(permutaciones)

# 5. Utilizando la fórmula
# **factorial(N) / factorial(N-n)**, debe salir el
# mismo número que en el código anterior

factorial(N) / factorial(N-n)

# Mi ejercicio

# 1. Se van a formar equipos de 5 integrantes con
# los alumnos de quinto grado de la escuela
# primaria "Lázaro Cárdenas del Río" de Banderilla.
# En total se tienen 20 alumnos.

# N = 20 - Número de elementos

# n = 5 - Grupos de 5 integrantes

N <- 20
n <- 5

# 2. Determinar que vayan los números con ID número
# consecutivo. En esta ocasión, el objeto se llamará
# "alumnos".

alumnos <- c(1:N)

## Cómo sacar las combinaciones

# 1. Nombrar un objeto llamado "combinaciones", utilizando
# **N**, **n** y **alumnos** y la función 
# **permutations**

permutaciones2 <- permutations(N, n, alumnos)

# 2. Las primeras permutaciones

head(permutaciones2)

# 3. Las últimas permutaciones

tail(permutaciones2)

# 4. ¿Cuántas permutaciones tenemos en total?

nrow(permutaciones2)

# 5. Utilizando la fórmula
# **factorial(N) / factorial(N-n)**,
# debe salir el mismo número que en el código anterior

factorial(N) / factorial(N-n)


