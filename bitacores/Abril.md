# DIA 3 [18-04-23]
Hemos realizado la comprobación de red en taller, para poner en marcha las instalaciones de sistemas operativos
Por otra parte, en clase hemos buscado información de las distribciones e inciar su planaficación para instalarlos.  
Tareas a realizar el próximo día: Retirar cables en malestado

---

# DIA 4 [20-04-23]
Hoy hemos dado los primeros pasos en el proyecto, más especificamente en la parte de la red. 
Hemos hecho una serie de configuraciones básicas en el router de Mikrotik, para poder tener acceso a internet para poder avanzar otras partes del proyecto (posteriormente iremos cambiando las configuraciones y añadiendo nuevas). También hemos restaurado a valores de fábrica otros dispositivos de red. El switch de cisco (borrando también las VLANs que estaban creadas en el router), el punto de acceso de TP-LINK y el switch de TP-LINK pequeño.

> Las configuraciones del **router de MikroTik** han sido las siguientes:
> - Configuración de interfaces, hemos hecho que por la interfaz **ETHER 1** esté conectado al la red del servidor de comunicacinoes y la interfaz **ETHER 4** sea la red LAN de la empresa, pero esto es provisional, más adelante cuando tengamos la red un poco más clara y con mas información cambiará.
> - Configuración del SRC-NAT para poder tener acceso a la red donde está el servidor de comunicaciones.
> - Configuración del enrutamiento, para enviar las peticiones a internet de los equipos de nuestra LAN por el servidor de comunicaciones.
> - Configuración de un pequeño servicio DHCP, para no tener que poner manualmente las IPs al conectar los clientes y ahorrar un poco más de tiempo para invertirlo a la configuración propia del sistema informático.

---
