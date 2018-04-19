clientes <- c("Juan Gabriel", "Ricardo", "Pedro")
fechas <- as.Date(c("2017-12-27", "2017-11-1", "2018-1-1"))
pago <- c(315, 192.55, 40.15)

# Creamos un dataframe con los objetos que hemos creado antes
pedidos <- data.frame(clientes, fechas, pago)

clientes_Vip <- c("Juan Gabriel", "Ricardo")

# Si queremos guardar el dataframe en un fichero Rdata, donde la variable
# forma parte del objeto guardado
save(pedidos, clientes_Vip, file="../data/tema1/ejemploPedidos.Rdata")

# RDS sólo serializa el objeto en si, no el nombre de la variable 
# (sólo los datos del objeto)
saveRDS(pedidos, file="../data/tema1/ejemploPedidos.rds")

# Si queremos cargar un fichero Rdata
load("../data/tema1/ejemploPedidos.Rdata")

# Si queremos recuperar
orders <- readRDS("../data/tema1/ejemploPedidos.rds")

# cargar datsets que están en la librería de R
data(iris)
View(iris)

data(cars)
view(cars)

# Se guarda un objeto que contiene toda la sessión de R
save.image(file = "../data/tema1/alldata.Rdata")

primes <- c(2, 3 , 5, 7, 11, 13)
pow2 <- c(2,4,8,16,32,64,128)
save(list = c("primes", "pow2"), file="../data/tema1/ejmplo_prime_and_pow2.Rdata")

# Se notifica si existe la variable al cargarla
attach("../data/tema1/ejmplo_prime_and_pow2.Rdata")

# Para obtener información de los datasets que tenemos disponibles
data()
