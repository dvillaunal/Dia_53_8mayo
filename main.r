
## ----Protocolo---------------------------------------------------------
"Protocolo:
   
  + Daniel Felipe Villa Rengifo
  
  + Lenguaje: R
  
  + Tema: Manejo de paquetes en R

  + Fuentes:
     
     1. https://datanalytics.com/libro_r/paquetes.html      2. http://faculty.washington.edu/kenrice/rintro/sess08.pdf"


## ----------------------------------------------------------------------
# Solicitamos la descripcion del paquete stats:
message("\n# Solicitamos la descripcion del paquete stats:")
packageDescription("stats")

# Solicitamos la documentación del paquete:
message("\n# Solicitamos la documentación del paquete:")
help(package = "stats")


## ----------------------------------------------------------------------
#Instalar uno de los paquetes mas antiguos de R en CRAN:
message("\n# Instalar uno de los paquetes mas antiguos de R en CRAN:")

install.packages("vioplot")

cat("\n \ninstall.packages(\"vioplot\")")


## ----------------------------------------------------------------------
# Vamos a echar un vistazo más profundo en la salida de la instalación de vioplot, algunos de los mensajes que puede obtener son:
message("\n# Vamos a echar un vistazo más profundo en la salida de la instalación de vioplot, algunos de los mensajes que puede obtener son:")

print("Installing package into ‘/home/username/R/x86_64-pc-linux-gnu-library/3.3’
(as ‘lib’ is unspecified)")


## ----------------------------------------------------------------------
# Vamos a cargar el paquete al archivo en si:
message("\n# Vamos a cargar el paquete al archivo en si:")

library(vioplot)

cat("\n \nlibrary(vioplot)") 


## ----------------------------------------------------------------------
# Una lista de vectores para instalar mas de un paquete:
message("\n# Una lista de vectores para instalar mas de un paquete:")

print("No lo ejecuto ya que me instalaria otra vez el paquete")
cat("\n \ninstall.packages(c(\"vioplot\", \"MASS\"))")


## ----------------------------------------------------------------------
# Instalando un paquete desde un mirror especifico:
message("\n# Instalando un paquete desde un mirror especifico:")

install.packages("vioplot", repo = "https://lib.ugent.be/CRAN/")


## ----------------------------------------------------------------------
# Script requerido para comenzar a usar paquetes de Bioconductor:
message("\n# Script requerido para comenzar a usar paquetes de Bioconductor:")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
# Sintaxis de como instalar paquetes de Bioconductor:
message("\n# Sintaxis de como instalar paquetes de Bioconductor:")

cat("\nBiocManager::install(\"Package.Name\")", "\n \nEn caso de ser mas de un paquete utlizar:\n","\nBiocManager::install(c(\"1°Package.Name\", \"2°Package.Name\",..., \"n°Package.Name\")")


## ----------------------------------------------------------------------
# Instalamos devtools, donde sera todo un poco más sencillo:
message("\n# Instalamos devtools, donde sera todo un poco más sencillo:")

install.packages("devtools")

cat("\n \ninstall.packages(\"devtools\")")

## Ahora instalemos desde github el paquete babynames:
message("\n## Ahora instalemos desde github el paquete babynames:")

devtools::install_github("hadley/babynames")


## ----------------------------------------------------------------------
# Miremos que paquetes tenemos instalados:
message("\n# Miremos que paquetes tenemos instalados:")

installed.packages()


## ----------------------------------------------------------------------
# Eliminemos el paquete anteriormente instalado:
message("\n# Eliminemos el paquete anteriormente instalado:")

remove.packages("vioplot")


## ----------------------------------------------------------------------
# Observemos si algún paquete neceista actualización:
message("\n# Observemos si algún paquete neceista actualización:")

old.packages()

cat("old.packages()")


## ----------------------------------------------------------------------
# Podemos actualizar algún paquete utilizando  la siguiente sintaxis:
message("\n# Podemos actualizar algún paquete utilizando  la siguiente sintaxis:")

cat("\n \nupdate.packages()")

cat("\n \nEsto actualizara todos los paquetes...")


## ----------------------------------------------------------------------
# Actualizar un paquete ya instalado en nuestro equipo o en linea:
print("# Actualizar un paquete ya instalado en nuestro equipo o en linea:")
cat("\n \ninstall.packages(\"Package.Name\")")
cat("\n\"Package.Name\" <= Nombre del paquete")


## ----------------------------------------------------------------------
# Descargemos una base de datos de nacimientos con su su respectio N° DE NACIMEINTO:
message("\n# Descargemos una base de datos de nacimientos con su su respectio N° DE NACIMEINTO:")

babynames::babynames


## ----------------------------------------------------------------------
# Descargamos el paquete babynames:
message("\n# Descargamos el paquete babynames:")
library(babynames)

## Utilizamos una de sus funciones que nos arroja los nacimentos de los bebes:
message("\n## Utilizamos una de sus funciones que nos arroja los nacimentos de los bebes:")
births

