# INSTALACIÓN Y PROCESO DE ZABBIX

## INSTALACIÓN

### Obtener el repositorio

- `wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian11_all.deb`

### Descomprimirlo

- `dpkg -i zabbix-release_6.0-4+debian11_all.deb`
- `apt update`

### Creación de la base de datos inicial

**INSTALACIÓN**

- `wget https://dev.mysql.com/get/mysql-apt-config_0.8.25-1_all.deb`
- `dpkg -i mysql-apt-config_0.8.25-1_all.deb`
- `apt install default-mysql-server -y`
- `systemctl enable mysql`
- `apt install zabbix-server-mysql zabbix-frontend-php zabbix-agent zabbix-sql-scripts zabbix-apache-conf -y`

```mysql
# mysql -uroot -p
password
mysql> create database zabbix character set utf8mb4 collate utf8mb4_bin;
mysql> create user zabbix@localhost identified by 'password';
mysql> grant all privileges on zabbix.* to zabbix@localhost;
mysql> set global log_bin_trust_function_creators = 1;
mysql> quit; 
```

- `nano /etc/zabbix/zabbix_server.conf`
  - Buscar la opción y desmarcarla poniendole el siguiente valor: DBPassword = password

- `zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p zabbix`
  - -uzabbix: usuario
  - -p: indicar que queremos promptear la password
  - zabbix: es la base de datos

**CONFIGURACIÓN WEB**
- Siguiente.
- Poner la contraseña.
- Siguiente...

**INICIO SESIÓN**
- Default: 
  - usr: Admin
  - pwd: zabbix

> Posible problema con el lenguaje:
>  
>  **Solución**: dpkg-reconfigure locales

https://www.zabbix.com/download?zabbix=6.0&os_distribution=debian&os_version=11&components=server_frontend_agent&db=mysql&ws=apache

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-zabbix-to-securely-monitor-remote-servers-on-ubuntu-18-04

https://www.zabbix.com/forum/zabbix-troubleshooting-and-problems/427991-zabbix-giu-broken-no-languages-and-web-interface-errors
