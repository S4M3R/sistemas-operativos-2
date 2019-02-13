# Teorico
## Sistema Operativo
### Definicion:
Un sistema operativo es el encargado de adiministrar los recursos del ordenador, interpretar comandos, coordinar el hardware, administrar archivos y directorios, manejar los usuarios y sus permisos. Esto no quiere decir que toda hermienta que venga con el SO no es parte del sistema operativo, las aplicaciones como la calculadora, editor de texto y navegador web son programas separados del mismo.Los Sistemas pueden tener distintos tipos de capacidades.
* Multi-usuario: es la capacidad de permitir interactuar con el sistema operativo a 2 o mas usuarios simultaneamente
* Multi-proceso:
* Multi-tarea:

### Clasificacion:
## Linux
### Historia:
### Caracteristicas:
### Diferencias:
## Sistema de archivos (linux):
### Nombre y versiones:
### Caracteristicas:
### Directorios:
### Tipos de archivos:
### Archivo etc/passwd
### Archivo etc/shadow
## Permisos

Los permisos nos permite limitar a usuarios sobre el uso de los ficheros. Estos se setean con, se utiliza chmod, chown, chgrp. Para mostrar los permisos que tienen los ficheros podemos usar ls -l.

El primer caracter identifica que tipo de archivo es:

- `- Archivo`
- `d Directorio`
- `b archivo de blockes`
- `c Archivo de caracteres especiales`
- `l Archivo de vinculo o enlace`
- `p Archivo especial de cauce`

Los siguientes caracteres describen los permisos del prpetario, grupo y resto de usuarios.

- `- sin permiso`
- `r lectura`
- `w escritura`
- `x ejecucion`

### Nombres
### Grupos
## Sistema virtual de archivos
### Definicion
### Cual es la fragmentacion interna si tengo un archivo de1949 bytes y tamaño de bloque de 512
### Proceso
### Programa
### Diferencia

## Archivos:

### /etc/passwd:

#### Estructura:

<nombre>:<password>:<uid>:<gid>:<descripción>:<carpeta>:<shell>

`nombre:` Es el nombre del usuario

`password:`

`x`: la password esta en /etc/shadow
`!!`: no tiene password
`!`: usuario bloqueado

`uid`: Es la id del usuario, 0 es root

`gid`: Es la id del grupo principal, puede estar en mas grupos

`carpeta`: Es la carpeta que uaria como carpeta de inicio del usuario

`shell`:

`/bin/bash`: Da los permisos de usar los comandos bash

`/bin/false y /usr/sbin/nologin`: Se le pone a los que no estan logueados

### /etc/shadow

#### Estructura:

<nombre>:<passwor cifrada>:<Dias desde 1970>:<min entre cambio de pass>:<max de dias de pass >:<dias que avisa antes de cambiar pass>:<dias despues de que password caduque para deshabilitar>:<Fecha de caucidad de cuenta>


## Comandos:
### cat:
cat que significa concatenar es el comando que no permite leer uno o mas archivos y imprimirlo por pantalla.

##### `cat [opcion] [archivo]`

#### Ejemplos:

`cat ruta/archivo.txt`

Muestra por pantalla un archivo

`cat  archivo1.txt archivo2.txt`

Mustra mas de un archivo

`cat archivo.txt | less`

`cat archivo.txt | more`

Te deja navegar por el archivo

`cat -n archivo.txt`

Mustra el numero de la linea y despues el texto en la linea

`cat file.txt > file1.txt`

Guarda la salida del cat a un archivo que lo crea o sobrescribe.

`cat file.txt >> file1.txt`

Guarda la salida del cat a un archivo que lo crea o se concatena en el final

### grep:

grep "global regular expression print" proccesa texto linea por linea y imprime las lineas que coincide con determinado patron.

#### `grep [opciones] partron [archivos...]`

#### Opciones:

`--color Las coincidencias son resaltadas con color`

`-n Muestra el numero de la linea`

`-i No le hace caso a las mayusculas`

`-r Busca recursivamente en los subdirectorios`

`-v Excluir las lineas que no coinciden`


### cd:

cd que significa "change directory" es el comando que nos permite navegar por los directorios.

#### `cd [opciones] directorio`

#### Ejemplos:

`"cd .":el punto significa directorio actual`

`"cd ..": doble punto sirve para volver un directorio`

`"cd /": es una ruta que empieza en el directorio base`

`"cd ./": es a partir del directorio de trabajo`

### rm:
rm o remove es el comando que te permite elimnar archivos y directorios(recursivamente). Lo que hace es desvincular el nombre del archivo con la informacion y la pone un estado para ser sobreescrito
#### `rm [opciones] ruta`

#### opciones
`-f: Ignora los archivos que no existen y no muestra nada por pantalla`

`-i: Pregunta antes de eliminar`

`-r: elimina directorios y su contenido`

`-d: agrega la capacidades de rmdir`

### rmdir:

Elimina directorios que estan vacios. Es equivalente a rm -d

#### `rmdir [opciones]`

### ls:

ls lisa contenido y informacion sobre archivos, directorios. ls solo muestra los archivos y directorios en el direcotio actual, de forma alfabetica

`ls [opciones] [ruta]`

#### Opciones

`-a No ignora las entradas empezando con ., mostrando todo el contenido del directorio`

`-r Da vuelta el orden de la salida`

`-l Muestra mas detalles de los ficheros`

### read:

Lee una entrada por teclado y lo guarda en una variable, por defecto es REPLY.

`read [opcines] variable`

#### Opciones:

`-p "texto" Imprime por pantalla un text y despues lee`

`-n num Lee hasta que se ingresen la cantidad de caracteres`

`-s No muestra lo que se esta escribiendo`

### passwd:
Este comando sirve para cambiar la contraseña a si mismo o el super usuario al resto, además de definir como van a ser utilizadas las contraseñas por los usuarios.

#### `passwd [opciones] [usario]`

#### Ejemplos:

`passwd`

Te pide tu contraseña anterior y despues te pide una nueva.

`sudo passwd samer`

Si tenes los poderes del superusuario este cambiara la contraseña del usario(samer).

### chmod:

Es usado para cambiar los permisos de los archivos y directorios

`chmod u=rwx,g=rx,o=r archivo`

### chown:

Cambia el usuario y grupo dueño del archivos.

`chown [usuario[:grupo]]`

### chgrp:

Cambia el grupo dueño de un archivo.

`chgrp [opciones] grupos archivos`

### wc:

wc sirve para contar lineas, palabras y caracteres que contiene un archivo.

#### `wc [opciones] [archivo]`

por defecto:

cLineas cPalabras cCaracteres rutaArchivo

#### Opciones:
`-c: Muestra numero de caracteres unicamente`

`-w: Muestra numero de palabras unicamente`

`-l: Muestra numero de palabras unicamente`

#### Ej:

Un archivo:

`wc /etc/passwd`

`38 57 1810 /etc/passwd`

Multiples archivos:

`wc /etc/shells /etc/hosts`

`15 19 192 /etc/shells`

`9 26 246 /etc/hosts`

`24 45 438 total`

### head:

Sirve para mostrar las primeras lineas de un archivo. Por defecto es 10, si hay multiples archivos muestra las lineas con un identificador del archivo. Si no se especifica empieza a leer el input del usario.

#### `head [opcion] [archivo]`

#### Opciones:

`-n: pide las lineas que quieres mostrar`

`-q nunca imprime los identificadores de los nombres de archivos`

`-v contratio a -q`

### Tail:

Es igual a head pero imprime las ultimas lineas de los archivos.

### >>:

Redirige la salida al final del archivo.

Ej:

`cat hola.txt >> hola.txt (Este se repetira a la mitad del texto)`

### <:

Sirve para insertar informacion de un archivo como si vos lo hiceras. Sirve para comandos que toman una entrada del usuario.

Ej:

`read informacion < dni.txt (Esto guardara dni.txt en la variabl informacion)`

### >:

Redirige la salida y sobrescribe el archivo.

Ej:

`cat hola.txt > chau.txt (chau.txt va a perder su contenido y tendra el de hola.txt)`

### ;:

Se usa para separar comandos. Esta a diferencia de && corre los dos sin importar lo que pase.

### &&:

Ejecuta el primer comando y si da error no ejecuta el siguiente, pero si no lo ejecuta.

### |:

Ejecuta el primer comando y pasa su salida al segundo comando.

Ej:

`head -n 5 names.txt | wc -w (Muestra la cantidad de palabras que tiene las primeras 5 lineas de names.txt)`

### if:

Es una estructura de control, que al ejecutarse prueba si la condicion se cumple, cuando es verdadera se ejecuta el codigo que contiene y despues va al final de la estructura, sino no se ejecutan el codigo y continua al siguiente.

#### Syntaxis:

`if [condicion]; then`

`<Comandos>`

`fi`

`if [condicion]; then`

`<Comandos>`

`elif [condicion]; then`

`<comandos>`

`else`

`<comandos>`

`fi`

#### Comparacion de cadenas alfabeticas:

`cadena1 = cadena2`	cadena1 es igual a cadena2

`cadena1 != cadena2`	cadena1 no es igual a cadena2

`cadena1 < cadena2`	cadena1 es menor que cadena2

`cadena1 > cadena 2`	cadena1 es mayor que cadena 2

`-n cadena1`		cadena1 no es igual al valor nulo (longitud mayorque 0)

`-z cadena1`		cadena1 tiene un valor nulo (longitud 0)

#### Comparacion de valores numericos:

`x -lt y`			x menor que y

`x -le y`			x menor o igual que y

`x -eq y`			x igual que y

`x -ge y`			x mayor o igual que y

`x -gt y`			x mayor que y

`x -ne y`			x no igual que y

#### Comparacion de ficheros

`-d fichero`		fichero existe y es un directorio

`-e fichero`		fichero existe

`-f fichero`		fichero existe y es un fichero regular (no un directorio, u otro tipo de fichero especial)

### while:

Ejecuta un codigo mientras la condicion se cumpla. Las condiciones son las mismas que las del if.

`while [condicion]`

`do`

`<comandos>`

`done`

### case:

Te permite crear una lista de respuestas a un valor. Es como una cadena de if pero con una sintaxis mas facil.

#### Estructura:

`case valor-a-comparar in

valor1)

comandos a ejecutar si el valor a comparar es valor1

;;

valor2)

valor3)

comandos a ejecutar si el valor a comparar es valor2 o valor3)

;;

*)

comandos a ejecutar si ninguno coincide (default)

;;

esac`

El valor a comparar puede ser una variable ($variable), el ;; termina la ejecucion del case, `*)` es para cuando nigunas de las opciones era del mismo valor al del valor a comparar.

### top:

El comando top sirve para ver los procesos que se estan llevando a cavo en tiempo real y informacion sobre su el uso de recursos del mismo.

#### `top [opciones] [columnas]`


### ps:

Lista los precesos activos que estan en el sistema.

`ps [opciones]`

### kill:

El comando kill envia una señal a un proceso. Se necesita la pid del preceso para enviarle la señal. La señal que se envia por defecto es TERM.

#### Usos:

##### Termina proceso

`kill pid`

##### Enviar señal en especifico

`kill -s señal pid`

##### Mostrar señales habilitadas

`kill -l`

### vi:

Es un editor de texto visual.

#### `vi archivo`

#### Utilizacion:

##### Arrow keys:

Se puede usar las flechas normal o hjkl.

 `h: izquierda`
 `j: abajo`
 `k: arriba`
 `l: derecha`

##### esc, return y delete

Es usado para cancelar cualquier comando que estes escribiendo, salir de el modo edicion.

##### Abrir comandos
`: es el caracter para escribir comandos`



### sh:

shell script es un leguage de interpretacion de comandos, estos comandos van desde

#### `sh [archivo]`

### mount

Sirve para montarar dispositivos externos en el sistema de archivos.

`mount -t tipo dispositivo directorio`

### umount:

Sirve para desmontar dispositiovos externos en el sistema de archivos.

`umount directorio`

### mkdir:

Este comando te permite crear directorios

#### `mkdir [opciones] nombre`


### who:

Mustra los usarios actualmente conectados

### cut:

#### Ejemplo:

`cut -d: -f1`

### date:

date sirve para imprimir, o cambiar el valor de la fecha y tiempo del sistema.

`date [opciones] [+formato]`

`-d "string" Muestra la fecha descrita por el string`

#### Formatos

`%a	The abbreviated weekday name (e.g., Sun).`

`%A	The full weekday name (e.g., Sunday).`

`%b	The abbreviated month name (e.g., Jan).`

`%B	Locale's full month name (e.g., January).`

`%c	The date and time (e.g., Thu Mar 3 23:05:25 2005).`

`%C	The current century; like %Y, except omit last two digits (e.g., 20).`

`%d	Day of month (e.g., 01).`

`%D	Date; same as %m/%d/%y.`

`%e	Day of month, space padded; same as %_d.`

`%F	Full date; same as %Y-%m-%d.`

`%g	Last two digits of year of ISO week number (see %G).`

`%G	Year of ISO week number (see %V); normally useful only with %V.`

`%h	Same as %b.`

`%H	Hour (00..23).`

`%I	Hour (01..12).`

`%j	Day of year (001..366).`

`%k	Hour, space padded ( 0..23); same as %_H.`

`%l	Hour, space padded ( 1..12); same as %_I.`

`%m	Month (01..12).`

`%M	Minute (00..59).`

`%n	A newline.`

`%N	Nanoseconds (000000000..999999999).`

`%p	Locale's equivalent of either AM or PM; blank if not known.`

`%P	Like %p, but lower case.`

`%r	Locale's 12-hour clock time (e.g., 11:11:04 PM).`

`%R	24-hour hour and minute; same as %H:%M.`

`%s	Seconds since 1970-01-01 00:00:00 UTC.`

`%S	Second (00..60).`

`%t	A tab.`

`%T	Time; same as %H:%M:%S.`

`%u	Day of week (1..7); 1 is Monday.`

`%U	Week number of year, with Sunday as first day of week (00..53).`

`%V	ISO week number, with Monday as first day of week (01..53).`

`%w	Day of week (0..6); 0 is Sunday.`

`%W	Week number of year, with Monday as first day of week (00..53).`

`%x	Locale's date representation (e.g., 12/31/99).`

`%X	Locale's time representation (e.g., 23:13:48).`

`%y	Last two digits of year (00..99).`

`%Y	Year.`

`%z	+hhmm numeric time zone (e.g., -0400).`

`%:z	+hh:mm numeric time zone (e.g., -04:00).`

`%::z	+hh:mm:ss numeric time zone (e.g., -04:00:00).`

`%:::z	Numeric time zone with ":" to necessary precision (e.g., -04, +05:30).`

`%Z	Alphabetic time zone abbreviation (e.g., EDT).`

### mv:

Sirve para mover o cambaiar el nombre a un archivo

### Syntaxis

Cambiar el nombre del archivo

`mv [opciones] -T nArchivo nuevoNombre`

Mover el archivo a un directorio

`mv [opciones] fichero [fichero2...] destino`

### sort:
