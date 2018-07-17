# proyecto_redes_moviles
Proyecto de redes moviles e inalambricas (crossbar)

Parametros para conectarse al servidor crossbar.io
1)URI: com.light.public.
2)Transporte: TCP
  tipo: web
  puerto:8080
3)Realm: public
4)IP: 190.169.74.237

Requisitos para la instalacion del servidor crossbar.io
Se deben instalar primero algunas dependencias, listadas a continuacion:
build-essential libssl-dev libffi-dev libreadline-dev libbz2-dev libsqlite3-dev libncurses5-dev
Ademas, se debe instalar python3.X (ya no se presta soporte a python 2.7) y se debe configurar este por defecto en el SO.

Para la instalacion, se descargo el software del github oficial de crossbar.io:
https://github.com/crossbario/crossbar
Se compila y esta listo para su ejecucion.
Es importante verificar que esta correctamente instalado, e inicializarlo para que genere el archivo de configuracion.

Contenido de los archivos cargados en este repositorio

config.patch: es un parche para el archivo de configuracion donde se encuentra toda la configuracion del router, workers, realms, transporte y autenticacion.
config_new.json: es el mismo archivo original de configuracion pero modificado, en caso de que el parche no funcione por alguna razon. Este archivo esta funcional y posee la configuracion necesaria para la ejecucion del crossbar.io (fue probado el martes 17 de Julio en el laboratorio).
Makefile.patch: este parche es para modificar el Makefile original del crossbar.io que utiliza python 2.7 (ya no es soportado por crossbar.io) y obligar al Makefile a usar python3.5.
Dockerfile: archivo para la descarga, e instalacion automatizada del crossbar.io (En desarrollo).
