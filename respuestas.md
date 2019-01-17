# Respuestas de examenes de SO2

## Teoricas

1) Nombra 3 caracteristicas de Linux como Sistema operativo

2) Nombra 3 directorios pertenecientes al sisteam de archivo de linux describir brevemente

## Practicas

3) Explique el uso que se le da a los simbolos ";" y "|" en LINUX.

3) El simbolo ";" se utiliza para separar comandos, permitiendo ejecutar varios comandos por separados en una linea.

El simbolo "|" ejecuta un comando y utiliza su salida en el siguiente.

EJ:

  ";": cat respuestas.md ; head -n 5 respuestas.md

  "|": head -n 5 respuestas.md | grep "3"

4) Escribe el comando que utilizaria para mostrar a los usuarios logueados.

4) w o who

5) Escriba el comando que se utilizaria para mostrar el archivo "DATOS" las lineas que coincidan con el siguiente texto "1211"

5) EJ en respuestas/5.sh

6) Escriba el comando con el que se muestra el contenido del directorio "ETC" si usted esta parado en el directorio "HOME"

6) cd ../etc

7) Escriba el comando que utilizaria para borrar el archivo "DATOS"

7) rm "DATOS"

8) Para el siguiente listado que se obtiene como resultado del comando "ls -la"

-rwxr-xr-x 8 jpreez oficina 8092 Nov 1 21:26 agendas2do

Teniendo en cuenta el archivo anterior:

1) Nombra y describa que permisos tienen

2) Que comando utilizaria para darle solo permiso de ejecucion a todos los usuarios

8)

  1)

  El usuario jpreez puede leer, modificar y ejecutar

  El grupo oficina como el resto de usuarios pueden leer y ejecutar

  2) chmod o-r-w+x

9) Cree un Shell Script que a traves de un menu por teclado permita relizar las siguientes acciones:

1) Eleminar un archivo ingresando su nombre por teclado (verificando que exista)

2) Muestre el directorio "/etc"

3) Muestre el contenido del archivo "passwd"

4) Opcion para salir (Esta es la unica opcion que termina la ejecucion del Script)

9) Shell 9.sh en respuestas
