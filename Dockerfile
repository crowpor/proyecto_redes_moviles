FROM python:3.5

WORKDIR /home

ADD . /crossbar
	#Dependencias
RUN	apt-get update
	&& apt-get upgrade
  	&& apt-get -y dist-upgrade
	&& apt-get -y install build-essential libssl-dev libffi-dev libreadline-dev libbz2-dev libsqlite3-dev libncurses5-dev
	&& git clone https://github.com/crossbario/crossbar
	#Instalacion del PyI
	&& apt-get install python3-pip
	&& apt-get install python3
	&& update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
	&& update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
	#Cambiar la version de python por defecto que usa el SO
	&& update-alternatives --config python
	&& patch Makefile.patch
	&& make install

#Probar que la instalacion se realizo correctamente
RUN crossbar version


