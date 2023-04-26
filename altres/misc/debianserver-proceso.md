# CONFIGURACIONES PREVIAS A PONER EN FUNCIONAMIENTO DE LOS SERVIDORES HOST DEBIAN

Estas son las configuraciones en el caso de que decidamos tener un debian core como máquina host de los servidores

# COMANDOS A UTILIZAR

## RECORDAR AMPLIAR LA PARTICIÓN YA QUE AL HACER EL PROCESO DE CLONEZILLA EL CLIENTE TENDRÁ PARTICIONES PEQUEÑAS

En los clientes no habrá problema, únicamente se ampliará desde interfaz gráfica.

En los servidores se tendrá que utilizar una serie de comandos para ello

## CAMBIAR HOSTNAME

echo "Introduce el nombre del equipo:"
read $nequipo
hostnamectl set-hostname $nequipo

## INFORMACIÓN AL PRINCIPIO DE UNA TTY
echo "SERVER BARCELONA (tiene GUI, más info en github)" >> /etc/issue

## RESPOSITORIOS CIPFP BATOI
echo -e "deb http://mirrord.cipfpbatoi.lan/debian bullseye main contrib\ndeb http://mirrord.cipfpbatoi.lan/debian-security bullseye-security main contrib" >> /etc/apt/sources.list

## INSTALACIÓN DE LOS RECURSOS PRINCIPALES
apt update
apt install gnupg 

## INSTALAR VIRTUALBOX

### Repositorios VBOX
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bullseye contrib" >> /etc/apt/sources.list

### Clave pública para verificar
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
gpg --dearmor oracle_vbox_2016.asc -o /usr/share/keyrings/oracle-virtualbox-2016.gpg

### Instalar el paquete
apt update
apt install virtualbox-7.0

## Es posible deshabilitar gnome para no consumir muchos recursos, solo usarlo cuando sea necesario

systemctl disable gdm 

(gnome display manager)

# SCRIPT COMPLETO

```bash

```
