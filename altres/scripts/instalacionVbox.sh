#!/bin/bash

### Repositorios VBOX
cat /etc/apt/sources.list | grep -F "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bullseye contrib" >-
if [ $? -ne 0 ] 
then
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bullseye contrib" >> /etc/apt/sources.list
else
  echo "ERROR [1]: Ya existe en /etc/apt/sources.list"
fi

### Clave pública para verificar
which wget > /dev/null
if [ $? -ne 0 ]
then
  apt install wget -y
fi
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
which wget > /dev/null
if [ $? -ne 0 ]
then
  apt install gpg -y
fi
gpg -o /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor oracle_vbox_2016.asc

### Instalar el paquete
apt update
apt install virtualbox-7.0 -y
