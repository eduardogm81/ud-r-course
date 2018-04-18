# Leer un fichero CSV con cabecera e indicando el separador (por defecto es ',')
# Crea un dataframe con los contenidos del fichero CSV
auto <- read.csv("../data/tema1/auto-mpg.csv", header = TRUE, sep = ",")

# Muestra por consola los nombres de las variables de auto
names(auto)

# Cargamos un fichero CSV sin cabecera
auto_no_header <- read.csv("../data/tema1/auto-mpg-noheader.csv", header = FALSE)

# Ahora nos daría los valores genéricos de V1,...,V9
names(auto_no_header)

# Ver las primeras líneas de un dataframe
head(auto_no_header, 4)

# Ejemplo del error de cargar un fichero sin cabecera con header = TRUE (valor por
# defecto de header)
auto_no_sense <- read.csv("../data/tema1/auto-mpg-noheader.csv")
head(auto_no_sense, 4)

# Ejemplo de uso de cabeceras personalizadas
# Nota c() se usa para crear un array de datos
auto_custom_headers = read.csv("../data/tema1/auto-mpg-noheader.csv", header = FALSE, 
                               col.names = c("numero", "millas_por_galeon", "cilindrada",
                                             "desplazamiento", "caballos_de_potencia",
                                             "peso", "aceleracion", "año", "modelo"))
head(auto_custom_headers, 2)

# NA: not available. Con valores numéricos no hay problema, pero con string puede
# poner un caractér en blanco en lugar de un NA. Para ello se usa:
# strings.na = "" -> Cuando encuentra un "" lo trata como un NA


who_form_internet <- read.csv("http://frogames.es/course-contents/r/intro/tema1/WHO.csv")
head (who_form_internet, 4)
