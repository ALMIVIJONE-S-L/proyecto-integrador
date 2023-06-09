# INSTALACIÓN DEL AGENTE ZABBIX

## WINDOWS SERVER CORE

Primero necesitaremos el archivo .exe, para instalarlo debes de acceder a la [siguiente url](https://www.zabbix.com/download_agents?version=6.0+LTS&release=6.0.18&os=Windows&os_version=Any&hardware=amd64&encryption=No+encryption&packaging=Archive&show_legacy=0)

Una vez tengamos descargado el archivo .zip (el cual tiene configuraciones y el **.exe**). En mi caso moveré a una carpeta compartida (usando DFS) el .zip para que todos los servidores pueda acceder y no tener que descargarlo en cada uno de ellos.

Cuando lo tengamos en el directorio deseado, lo descomprimiremos.

> Todo este proceso se supone que se hace desde un cliente, de forma gráfica, para más facilidad.

Para empezar, tendremos que (desde powershell) escribir los siguientes comandos:

```powershell
# Entrar al directorio donde está el .zip descomprimido (que están los directorios config y bin)
cd \\.......
```
```
# Editar el fichero de configuración: .\conf\....conf
Server=10.1.10.3 #IP servidor ZABBIX
ServerActive=10.1.10.3 #IP servidor ZABBIX
Hostname=SRV-EMPRESARIAL #Nombre del equipo (preferentemente cambiarle el nombre del por defecto)
```
```powershell
# Instalar el agente zabbix (con el nombre correspondiente)
.\bin\agenteZabbix.exe --config .\conf\zabbix-agent.conf --install

# Apagar y volver a encender el servicio
.\bin\agenteZabbix.exe --stop
.\bin\agenteZabbix.exe --start

# Regla Firewall
New-NetFirewallRule -DisplayName "HABILITAR PUERTO 10050" -Direction Inbound -Profile Any -LocalPort 10050 -Protocol TCP
```

## SERVER LINUX
```bash

#Descargar desde repositorios
wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian11_all.deb

dpkg -i zabbix-release_6.0-4+debian11_all.deb

apt update

# Install Zabbix agent
apt install zabbix-agent

# Start Zabbix agent process
systemctl restart zabbix-agent
systemctl enable zabbix-agent 
```

## PROBLEMAS

En el caso de la intranet necesitaremos una regla extra en el router para permitir el tráfico por el puerto 10050, esta está documentada [aquí](mikrotik/reglasFirewall.md#intranet-zabbix)