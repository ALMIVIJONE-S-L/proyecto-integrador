# INSTALACIÓN Y PROCESO DE ZABBIX

## INSTALACIÓN

### Obtener el repositorio

- wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian11_all.deb

### Descomprimirlo

- dpkg -i zabbix-release_6.0-4+debian11_all.deb
- apt update

### Instalar ZABBIX (agente, base de datos y servicio)

- apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent


### Creación de la base de datos inicial
