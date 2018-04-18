# Instalamos el paquete para poder usar los XML, esto hay que hacerlo una vez
# install.packages("XML")

# Cargar la librería de XML
library(XML)

url <- "../data/tema1/cd_catalog.xml"

# Parseamos el xml y obtenemos el nodo principal
xmldoc <- xmlParse(url) #XMLInternalDocument
rootNode <- xmlRoot(xmldoc)

# Observamos el primer elemento
rootNode[1]

# Esto nos proporciona una dataset, pero el transpuesto
# iterativamente recorre todos los hijos del nodo raiz y le aplica la función
# que indicamos.
cds_data <- xmlSApply(rootNode, function(x) xmlSApply(x, xmlValue))

# Tenemos que hacer una transposición de los datos
cds.catalog <- data.frame(t(cds_data), row.names = NULL)
head(cds.catalog, 2)
# Mostrar de la fila 1 a la 5 con todas las columnas
cds.catalog[1:5,]

# Para recorrer mediante XPath el HTLM de la web
#xpathSApply
#getNodeSet()

population_url <- "../data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)

most_populated <- tables[[6]]
head(most_populated, 3)

# Cargar la página directamente
custom_table <- readHTMLTable(population_url, which = 6)
head

