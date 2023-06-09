# FIREWALL MIKROTIK

## REDES

Tendremos 2 redes principales, la **LAN INTERNA** y la **DMZ**.

En la interna, es donde tenemos toda la red de la empresa.
En el DMZ, es donde tenemos el servidor WEB. Su red será la 172.16.0.0/24

## SERVIDOR WEB
Para gestionar el servidor WEB, tendremos el servicio **SSH** por el puerto 22

## Intranet Zabbix
Para permitir la conexión mediante el agente de zabbix en el firewall hay que habilitar 2 reglas, estas son:

	Filtro = Acceder desde la intranet al servidor; puerto 10050:
	- Chain: Forward
	- Src. Address: 172.16.0.1
	- Protocol: 6 (tcp)
	- Dst. Port: 10050
	- In. Interface: ether2
	- Out. Interface: Servidores (vlan 10)
	- Comment: Intranet -> Servidores
	
	Filtro = Acceder desde la intranet al servidor; puerto 10050:
	- Chain: Forward
	- Src. Address: 10.1.10.3
	- Protocol: 6 (tcp)
	- Dst. Port: 10050
	- In. Interface: Servidores (vlan 10)
	- Out. Interface: ether2
	- Comment: Servidores -> Intranet

## Pasos de configuración a seguir en el mikrotik

1. Configuraremos la interfaz DMZ, añadiendole una ip .254 en la red 172.16.0.0/24.
2. Configuraremos NAT, con una regla de entrada DST-NAT, con las siguientes opciones:
	- Chain: Dstnat
	- Protocol: 6 (tcp)
	- Dst Port: 80
	- In. Interface: Ether 1 (internet)
	- Action: Dst-nat
	- To Addresses: 172.16.0.1
	- Comment: Redirección a la intranet.
3. Configuraremos los filtros del firewall
	Filtro = Acceder desde la red interna:
	- Chain: Forward
	- Dst. Address: 172.16.0.1
	- Protocol: 6 (tcp)
	- Dst. Port: 80
	- In. Interface: bounding
	- Comment: Permitiendo desde red interna a DMZ
	
	Filtro = Permitir paquetes de conexión y relacionados:
	- Chain: Forward
	- Protocol: 6 (tcp)
	- Connection State: related y established
	- Comment: Permitir paquetes relacionados y de conexión
	
	Filtro = Permitir ssh desde sysadmin:
	- Chain: Forward
	- Src Address: 10.1.20.10
	- Protocol: 6 (tcp)
	- Dst. Port: 22
	- In. Interface: Bounding
	- Out. Interface: ether 2
	- Action: Accept
	- Comment: Permitir SSH desde el equipo sysadmin
	
	Filtro = Bloquear desde dmz a la interna (pero está permitido a la red entre sedes)
	- Chain: Forward
	- In. Interface: ether 2
	- Out. Interface: bounding
	- Action: Reject
	- Comment: Rechazar tráfico desde DMZ a interna
	
	Filtro = Bloquear todo lo demás desde la interna al dmz
	- Chain: Forward
	- In. Interface: ether 2
	- Out. Interface: bounding
	- Action: Reject
	- Comment: Rechazar el tráfico que queda


