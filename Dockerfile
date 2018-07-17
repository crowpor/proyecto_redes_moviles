FROM debian:9.4

WORKDIR /home

ADD . /crossbar
	#Dependencias
RUN	apt-get update
RUN	 apt-get upgrade
RUN  	 apt-get -y dist-upgrade
RUN	 apt-get -y install build-essential libssl-dev libffi-dev libreadline-dev libbz2-dev libsqlite3-dev libncurses5-dev
RUN	 git clone https://github.com/crossbario/crossbar
	#Instalacion del PyI
RUN	 apt-get install python3-pip
RUN	 apt-get install python3
RUN	 update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
RUN	 update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
	#Cambiar la version de python por defecto que usa el SO
#RUN	 update-alternatives --config python
RUN	 mv /usr/bin/python /usr/bin/python_other
RUN	 lm `wich python3.5` /usr/bin/python
RUN	 patch Makefile.patch
RUN	 make install

#Probar que la instalacion se realizo correctamente
RUN crossbar version
