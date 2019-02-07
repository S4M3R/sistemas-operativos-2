# Respuestas de examenes de SO2

## Teoricas

1.1) Nombra 3 caracteristicas de Linux como Sistema operativo

1.2) Nombra 3 directorios pertenecientes al sisteam de archivo de linux describir brevemente

## Practicas

1.3) Explique el uso que se le da a los simbolos ";" y "|" en LINUX.

1.3) El simbolo ";" se utiliza para separar comandos, permitiendo ejecutar varios comandos por separados en una linea.

El simbolo "|" ejecuta un comando y utiliza su salida en el siguiente.

EJ:

  ";": cat respuestas.md ; head -n 5 respuestas.md

  "|": head -n 5 respuestas.md | grep "3"

1.4) Escribe el comando que utilizaria para mostrar a los usuarios logueados.

1.4) w o who

1.5) Escriba el comando que se utilizaria para mostrar el archivo "DATOS" las lineas que coincidan con el siguiente texto "1211"

1.5) EJ en respuestas/5.sh

1.6) Escriba el comando con el que se muestra el contenido del directorio "ETC" si usted esta parado en el directorio "HOME"

1.6) cd ../etc

1.7) Escriba el comando que utilizaria para borrar el archivo "DATOS"

1.7) rm "DATOS"

1.8) Para el siguiente listado que se obtiene como resultado del comando "ls -la"

-rwxr-xr-x 8 jpreez oficina 8092 Nov 1 21:26 agendas2do

Teniendo en cuenta el archivo anterior:

1) Nombra y describa que permisos tienen

2) Que comando utilizaria para darle solo permiso de ejecucion a todos los usuarios

1.8)

  1)

  El usuario jpreez puede leer, modificar y ejecutar

  El grupo oficina como el resto de usuarios pueden leer y ejecutar

  2) chmod o-r-w+x

1.9) Cree un Shell Script que a traves de un menu por teclado permita relizar las siguientes acciones:

1) Eleminar un archivo ingresando su nombre por teclado (verificando que exista)

2) Muestre el directorio "/etc"

3) Muestre el contenido del archivo "passwd"

4) Opcion para salir (Esta es la unica opcion que termina la ejecucion del Script)

1.9) Shell 9.sh en respuestas

2.1) Escriba la linea de comando para:

a. Cambiar la clave a los usuarios

a. passwd (Para cambiar la contra del usuario actual)

b. Mostrar los usuarios conectados al Sistema

b. who

c. Copiar e; archivo passwd que esta en /etc para el directorio usuario

c. cp /etc/passwd ~

d. Mover el archivo prueba.sh del directorio usuario actual para el usuario pramirez

d. sudo mv ~/prueba.sh /home/pramirez/prueba.sh

e.Mostrar las lineas del archivo Escritos que no contengan la palabra fechas

e. grep -v "fechas" Escritos

f. Contar las lineas del archivo Escrito

f. wc -l Escrito

2.2) Explique que hacen cada una de las siguientes lineas:

a. grep -i juan listas.txt | grep -v rodriguez

a. Mustra las lineas de listas.txt que tengan la palabra juan (sin importar las mayusculas) y que no tengan la palabra "rodriguez" (si importa las mayusculas)

b. cat archivo.txt | cut -d. -f5

b.Separa por columnas, separando cada . y muestra la fila 5

c. chmod u+x escritos.txt

c. agrega el permiso de ejcucion a escritos.txt

e. wc -l hola.txt

e. Muestra la cantidad de lineas de hola.txt

f. head hola.txt

f. Mustra las primeras 10 lineas de hola.txt

2.3)

  -rwx------ 3 jperez oficina 216  May 14 16:12 .gnapg
  -rwxr-xr-x 2 jperez oficina 80   May 14 09:35 .kbd
  -rwxr-x--- 1 jperez oficina 4096 Aug 24 05:15 .pingus
  -rw-r--r-- 1 jperez oficina 1645 Oct 10 21:50 agenda.txt
  drwxr-xr-x 8 jperez oficina 8092 Nov 1  21:26 agendas2do
  -rw-r--r-- 1 jperez oficina 711  Aug 24 10:45 agregar
  -rwxr-xr-- 1 jperez oficina 8    Sep 29 15:24 arch2.sh
  -rw-r--r-- 1 jperez oficina 8    Sep 29 16:12 PROMPT

  a. Cuantos archivos ocultos hay?

  a. Hay 3 archivos ocultos

  b. Cual es el archivo convencional de mayor size?

  b. .pingus

  c. Cuantos directorios hay en el directorio actual?

  c. 1 que es agendas2do

  d.Quienes pueden ejecutar el programa arch2.sh?

  d. El usuario jperez, el usuario root y el grupo oficina

2.4)

a. Explique el funcionamiento del pipe (|) y de un ejemplo

a. ejecuta un comando y utiliza su salida en la ejecutacio del siguiente

ej: cat hola.txt | head -n 15

b. Explique el funcionamiento de (>>) y de un ejemplo

b. Guarda la salida de un comando en la ruta siguiente

  cut -f 4 >> texto.txt

c. Explique el funcionamiento de (<) y de un ejemplo

c.Utiliza el contenido de un archivo para ejecutar un comando  

  read samer < texto.txt

d. Escriba un script que utilize while

d. Ej: 2.4d

`#!bin/bash

op=2

while [ $op -ne 3 ]

do

echo "ingresa 3 para dejar de mostrar este texto"

read op

done`


e. Escriba un script que utilice case

e. Ej: 2.4e

`#!bin/bash
echo "1) Dime buenos dias"
echo "2) Dime buenas tardes"
echo "3) Dime buenas noches"
read -p "Ingresa una de las opciones" op

case $op in
1)
echo "buenos dias"
;;
2)
echo "buenas tardes"
3)
;;
echo "buenas noches"
;;
*)
echo "La opcion que ingresaste es incorrecta"
;;
esac`

3.1) Indique 3 caracteristicasde Linux como sisteam operativo

3.1) Multi-usuario: varios usuarios pueden trabajar en la misma maquina, empleando los recursos de la misma.

Multi-tarea: el usuario puede realizar varias tareas al mismo tiempo, permitiendo hacer tareas en segundo plano.

Multi-proceso: puede ejecutar varios procesos en paralelo.

3.2) Explique los permisos "rwx", y que grupo de permisos tiene un archivo/directorio

3.2)
Cada usuario tiene una serie de permisos a la hora de acceder a un archivo, estos estan clasificado en: r read(Lectura), w write(Escritura), x execute(Ejecutar). Estos permisos se le aplica a el owner, un grupo y el resto de usuarios sobre un archivo.

3.3) Dado el siguiente archivo

-rw-rw-r-- 1 jperez usuarios 4020 may 25 21:40 archivo.sql

indique el significado de cada campo

3.3)El primer caracter siginfica que no tien permiso especial

El resto de los 9 caracteres especifican los permisos del owner, grupo y el resto de usuario de esta manera:

rw-rw- es que el owner y el grupo tiene los permisos de lectura y escritura pero no de ejecucion. Despues el r-- significa que el resto de usuarios solo pueden leer el archivo.

El numero es la cantidad de archivos que tiene adentro, si es un archivo solo se tiene a si mismo.

El campo jperez es el usuario owner y el campo usuarios es el grupo encargado del archivo

4020 es el size archivo en bytes

may 25 21:40 es la hora y fecha de ultima modificacion

archivo.sql es el nombre del archivo


3.4) Indique como asignar los siguientes permisos al archivo "datos.txt", con el comando chmod

rw-rw-r-- rwxrwx--x rw-r-x-wx ---rwx--- rwx-w-r-x

chmod 664 datos.txt

chmod 771 datos.txt

chmod 653 datos.txt

chmod 070 datos.txt

chmod 725 datos.txt

3.5) Indique que funcion cumplen los comandos

top ps kill vi sh chown chgrp chmod mount umount grep ls mkdir who cut

top: Muestra los procesos que se estan ejecutando en tiempo real, ademas de mostrar informacion sobre la totalidad y los porcesos.

ps: Muestra una seleccion de procesos en la ejecucion del comando (No se actualiza en tiempo real)

kill: El comando kill envia una señal a un proceso. Se necesita la pid del preceso para enviarle la señal. La señal que se envia por defecto es TERM que termina el proceso.

vi: es un editor de texto que esta en la mayoria de las distribuciones

chown: nos permite cambiar el owner de un archivo

chgrp: nos permite cambiar el grupo de un archivo

chmod: nos permite cambiarle los permisos a un archivo

mount: nos permite montar unidades de almanecamiento sobre nuestro arbol de directorios

umount: nos permite desmotar las unidades de almacenamiento de nuestro arbol de directorios

grep: procesa texto lines por linea buscando un patron, por defecto imprime las lineas que tienen el patron

ls: muestra el contenido del directorio

mkdir: sirve para crear carpetas

who: Muestra los usuarios conectados

cut: Sirve para cortar partes de lineas en un archivo

4.1) Que informacion almacena el archivo "/etc/passwd"?

Introduce cuatro de los campos que almacena el archivo

4.2) Que informacion almacena el archivo "/etc/shadow"?

Indique tres de los campos que almacena el archivo

4.3) Que tipos de archivos existen en el S.O Linux?


4.4) Al ejecutar el comando "ls-l" se muestran lineas como la siguiente:

-rwxr-xr-- 2 fdetal 2ic 4094 jun 15 10:25

Que informacion indica en cada caso?

4.5) Indique los comandos necesarios para realizar las siguintes operaciones:

a. Crear un directorio de nombre "miscosas" dentro del directorio home del usuario "fulano"

a. cd /home/fulano



b. Copia los archivos "/etc/passwd" y "/etc/shadow" al directorio "miscosas"

b. cp /etc/passwd miscosas; cp /etc/shadow miscosas

c. Cambia el nombre del directorio "miscosas" por "examen"

c. mv miscosas examen

d. Asignarle permisos de ejecucion para todos los usuarios al directorio "/home/fulano"

d. chmod o+x

e. Crear un archivo de nombre "mis_datos" con tu nombre y apellido como contenido.

echo "miNombre y miApellido" > mis_datos

f. Mostrar el contenido del archivo "/etc/passwd" de forma pausada (pagina a pagina)

f. cat /etc/passwd | less

4.6) Realizar un shell-script que muestre y realice las opciones del siguiente menu:

a. Datos de los usarios conectados

b. Fecha y hora actual

c. Procesos en ejecucion del usuario actual

d. Nombre de los usuarios que su "login" contenga "ez"
