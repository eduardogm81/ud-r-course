# Instalamos el paquete para leer datos de json
# install.packages("jsonlite")
# install.packages("curl")

library(jsonlite)
library(curl)

dat.1 <- fromJSON("../data/tema1/students.json")
dat.2 <- fromJSON("../data/tema1/student-courses.json")

url <- "https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json"
currencies <- fromJSON(url)

# Con $ podemos recorrer los distintos subnodos del json
currency.data <- currencies$list$resources$resource$fields

# Con $ podemos acceder a campos específicos de un dataset
head(dat.1, 3)
dat.1$Email

# Indicar las 5 primeras filas y las dos primeras columnas
currency.data[1:5, 1:2]

# Recuperar solo las filas 2, 5 y 8
dat.1[c(2,5,8),]
dat.1[, c(2,5)]
