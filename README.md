```{r Protocolo}
"Protocolo:
   
  + Daniel Felipe Villa Rengifo
  
  + Lenguaje: R
  
  + Tema: Manejo de paquetes en R

  + Fuentes:
     
     1. https://datanalytics.com/libro_r/paquetes.html      2. http://faculty.washington.edu/kenrice/rintro/sess08.pdf"
```


# ¿Qué son los paquetes de R?
Esto se puede dividir en dos partes, la formal y una forma más sencilla de entenderla.

## ¿Qué es un paquete?

Empecemos con algunas definiciones. Un paquete es una forma adecuada de organizar tu propio trabajo y, si quieres, compartirlo con otros. Normalmente, un paquete incluirá código (¡no sólo código R!), documentación para el paquete y las funciones que contiene, algunas pruebas para comprobar que todo funciona como debería, y conjuntos de datos.

La información básica sobre un paquete se proporciona en el archivo `DESCRIPTION file`, donde puede encontrar lo que hace el paquete, quién es el autor, a qué versión pertenece la documentación, la fecha, el tipo de licencia que utiliza y las dependencias del paquete.

Tenga en cuenta que también puede hacer clic aquí para ver el `DESCRIPTION file`.

Además de encontrar los `DESCRIPTION files` como __cran.r-project.org__ o __stat.ethz.ch__, también puede acceder al archivo de descripción dentro de R con el comando `packageDescription("paquete")`, a través de la documentación del paquete `help(paquete = "paquete")`, o en línea en el repositorio del paquete.

## Definición:

Un paquete R es una extensión de R que contiene conjuntos de datos y funciones específicas para resolver cuestiones concretas.

R viene con paquetes estándar (o `base`), que contienen las funciones básicas y los conjuntos de datos, así como las funciones estadísticas y gráfi cas estándar que permiten el funcionamiento de R.

> También hay otros miles de paquetes de R disponibles para su descarga e instalación desde __CRAN__, __Bioconductor__ y __GitHub repositories__.

_NOTA: Después de la instalación, primero debe cargar el paquete para utilizar las funciones del mismo._

Por ejemplo, para el paquete `stats`, estas formas serán:

```{r}
# Solicitamos la descripcion del paquete stats:
message("\n# Solicitamos la descripcion del paquete stats:")
packageDescription("stats")

# Solicitamos la documentación del paquete:
message("\n# Solicitamos la documentación del paquete:")
help(package = "stats")
```

# ¿Qué son los repositorios?

Un repositorio es un lugar donde se encuentran los paquetes para poder instalarlos desde él. Aunque usted o su organización pueden tener un repositorio local, normalmente están en línea y son accesibles para todo el mundo. Tres de los repositorios más populares para los paquetes de R son:

## CRAN

el repositorio oficial, es una red de servidores ftp y web mantenidos por la comunidad R en todo el mundo. La fundación R lo coordina, y para que un paquete se publique aquí, tiene que pasar varias pruebas que garanticen que el paquete sigue las políticas de CRAN.

## Bioconductor

se trata de un repositorio de temas específicos, destinado al software de código abierto para la bioinformática. Al igual que CRAN, tiene sus propios procesos de envío y revisión, y su comunidad es muy activa teniendo varias conferencias y reuniones al año.

## Github

aunque no es específico de R, Github es probablemente el repositorio más popular para proyectos de código abierto. Su popularidad proviene del espacio ilimitado para el código abierto, la integración con git, un software de control de versiones, y su facilidad para compartir y colaborar con otros. Pero hay que tener en cuenta que no hay ningún proceso de revisión asociado a él.

# ¿Cómo instalar un paquete de R?

La forma de instalar un paquete dependerá de dónde se encuentre. Así, para los paquetes disponibles públicamente, esto significa a qué repositorio pertenece. La forma más común es usar el repositorio CRAN, entonces sólo necesitas el nombre del paquete y usar el comando `install.packages("paquete")`.

Por ejemplo, el paquete más antiguo publicado en CRAN y que sigue en línea y actualizándose es el paquete `vioplot`, de _Daniel Adler_.

Para instalarlo desde CRAN, es necesario utilizar:

```{r}
#Instalar uno de los paquetes mas antiguos de R en CRAN:
message("\n# Instalar uno de los paquetes mas antiguos de R en CRAN:")

cat("\n \ninstall.packages(\"vioplot\")")
```

> NOTA: Después de ejecutar esto, recibirá algunos mensajes en la pantalla. Dependerán del sistema operativo que esté utilizando, de las dependencias y de si el paquete se ha instalado correctamente.

```{r}
# Vamos a echar un vistazo más profundo en la salida de la instalación de vioplot, algunos de los mensajes que puede obtener son:
message("\n# Vamos a echar un vistazo más profundo en la salida de la instalación de vioplot, algunos de los mensajes que puede obtener son:")

print("Installing package into ‘/home/username/R/x86_64-pc-linux-gnu-library/3.3’
(as ‘lib’ is unspecified)")
```

Vamos a cargar el paquete al archivo en si utilizando el parámetro `library()`.

```{r}
# Vamos a cargar el paquete al archivo en si:
message("\n# Vamos a cargar el paquete al archivo en si:")
library(vioplot)
cat("\n \nlibrary(vioplot)") 
```

Por último, para instalar más de un paquete a la vez, basta con escribirlos como un vector de caracteres en el primer argumento de la función `install.packages()`:

```{r}
# Una lista de vectores para instalar mas de un paquete:
message("\n# Una lista de vectores para instalar mas de un paquete:")

print("No lo ejecuto ya que me instalaria otra vez el paquete")
cat("\n \ninstall.packages(c(\"vioplot\", \"MASS\"))")
```

## Instalar desde los Mirrors de CRAN

Recuerda que CRAN es una red de servidores (cada uno de ellos llamado "Mirrors"), por lo que puedes especificar cuál quieres utilizar. Si estás usando R a través de la interfaz RGui, puedes hacerlo seleccionándolo de la lista que aparece justo después de usar el comando `install.packages()`. En RStudio, el Mirrors ya está seleccionado por defecto.

También puede seleccionar su Mirrors utilizando la función `chooseCRANmirror()`, o directamente dentro de la función `install.packages()` utilizando el parámetro repo. Puede ver la lista de Mirrors disponibles con `getCRANmirrors()` o directamente en este enlace.

### Ejemplo

para utilizar el Mirrors de la Biblioteca de la Universidad de Ghent (Bélgica) para instalar el paquete vioplot puede ejecutar lo siguiente:

```{r}
# Instalando un paquete desde un mirror especifico:
message("\n# Instalando un paquete desde un mirror especifico:")

install.packages("vioplot", repo = "https://lib.ugent.be/CRAN/")
```

## Instalación de paquetes de Bioconductor

En el caso de Bioconductor, la forma estándar de instalar un paquete es ejecutando primero la siguiente línea de código:

```{r}
# Script requerido para comenzar a usar paquetes de Bioconductor:
message("\n# Script requerido para comenzar a usar paquetes de Bioconductor:")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
# Sintaxis de como instalar paquetes de Bioconductor:
message("\n# Sintaxis de como instalar paquetes de Bioconductor:")

cat("\nBiocManager::install(\"Package.Name\")", "\n \nEn caso de ser mas de un paquete utlizar:\n","\nBiocManager::install(c(\"1°Package.Name\", \"2°Package.Name\",..., \"n°Package.Name\")")
```

## Instalación de paquetes a través de `devtools`

cada repositorio tiene su propia manera de instalar un paquete desde ellos, así que en el caso de que utilice regularmente paquetes de diferentes fuentes, este comportamiento puede ser un poco frustrante. Una forma más eficiente es probablemente utilizar el paquete devtools para simplificar este proceso, ya que contiene funciones específicas para cada repositorio, incluyendo CRAN.

Puedes instalar devtools como siempre con `install.packages("devtools")`, pero puede que también necesites instalar Rtools en Windows, las herramientas de línea de comandos de Xcode en Mac, o r-base-dev y r-devel en Linux. 

Después de instalar devtools, podrás utilizar las funciones de utilidad para instalar otros paquetes. Las opciones son

+ `install_bioc()` de Bioconductor,

+ `install_bitbucket()` de Bitbucket,

+ `install_cran()` de CRAN,

+ `install_git()` desde un repositorio git,

+ `install_github()` desde GitHub,

+ `install_local()` desde un archivo local,

+ `install_svn()` desde un repositorio SVN,

+ `install_url()` desde una URL, e `install_version()` desde una versión específica de un paquete CRAN.

### Ejemplo

para instalar el paquete babynames desde su repositorio de Github, puedes utilizar

```{r}
# Instalamos devtools, donde sera todo un poco más sencillo:
message("\n# Instalamos devtools, donde sera todo un poco más sencillo:")

cat("\n \ninstall.packages(\"devtools\")")

## Ahora instalemos desde github el paquete babynames:
message("\n## Ahora instalemos desde github el paquete babynames:")

devtools::install_github("hadley/babynames")
```

# ¿Cómo actualizar, eliminar y comprobar los paquetes instalados?

es normal usar `install.packages()` unas cuantas veces, y dada la velocidad a la que se desarrollan los paquetes de R, es posible que más tarde que nunca deba actualizar o reemplazar sus paquetes. 

## Comprobar que paquetes estan instalados:

Para comprobar qué paquetes están instalados en tu ordenador, es posible usar:

```{r}
# Miremos que paquetes tenemos instalados:
message("\n# Miremos que paquetes tenemos instalados:")

installed.packages()
```

## Como eliminar un paquete:

Desinstalar un paquete es sencillo con la función `remove.packages()`, en su caso:

```{r}
# Eliminemos el paquete anteriormente instalado:
message("\n# Eliminemos el paquete anteriormente instalado:")

remove.packages("vioplot")
```

## Comprobar actualizaciones:

+ Puede comprobar qué paquetes necesitan una actualización con una llamada a la función:

```{r}
# Observemos si algún paquete neceista actualización:
message("\n# Observemos si algún paquete neceista actualización:")

cat("old.packages()")
```

+ Podemos actualizar todos los paquetes mediante:

```{r}
# Podemos actualizar algún paquete utilizando  la siguiente sintaxis:
message("\n# Podemos actualizar algún paquete utilizando  la siguiente sintaxis:")

cat("\n \nupdate.packages()")

cat("\n \nEsto actualizara todos los paquetes...")
```

+ Pero para un paquete específico, sólo tenemos que utilizar una vez más:

```{r}
# Actualizar un paquete ya instalado en nuestro equipo o en linea:
print("# Actualizar un paquete ya instalado en nuestro equipo o en linea:")
cat("\n \ninstall.packages(\"Package.Name\")")
cat("\n\"Package.Name\" <= Nombre del paquete")
```

# ¿Cómo cargar los paquetes?

Una vez instalado un paquete, está listo para utilizar sus funcionalidades. Si sólo necesita un uso esporádico de algunas funciones o datos dentro de un paquete, puede acceder a ellos con la notación `packagename::functionname()`. Por ejemplo, ya que has instalado el paquete babynames, puedes explorar uno de sus conjuntos de datos.

+ recordamos cómo ver una visión general de qué funciones y datos contiene un paquete:

    (paquete = "babynames")
    

Para acceder al conjunto de datos de nacimientos dentro del paquete `babynames` sólo tenemos que escribir:

```{r}
# Descargemos una base de datos de nacimientos con su su respectio N° DE NACIMEINTO:
message("\n# Descargemos una base de datos de nacimientos con su su respectio N° DE NACIMEINTO:")

babynames::babynames
```

Si va a hacer un uso más intensivo del paquete, entonces quizás valga la pena cargarlo en memoria. La forma más sencilla de hacerlo es con el comando `library()`.

Tenga en cuenta que la entrada de `install.packages()` es un vector de caracteres y requiere que el nombre esté entre comillas, mientras que `library()` acepta tanto caracteres como nombres y le permite escribir el nombre del paquete sin comillas.

Después de esto, ya no necesita la notación `package::function()`, y puede acceder directamente a sus funcionalidades como a cualquier otra función o dato base de R:

```{r}
# Descargamos el paquete babynames:
message("\n# Descargamos el paquete babynames:")
library(babynames)

## Utilizamos una de sus funciones que nos arroja los nacimentos de los bebes:
message("\n## Utilizamos una de sus funciones que nos arroja los nacimentos de los bebes:")
births
```