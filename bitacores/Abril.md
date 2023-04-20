# DIA 3 [18-04-23]
Hemos realizado la comprobación de red en taller, para poner en marcha las instalaciones de sistemas operativos
Por otra parte, en clase hemos buscado información de las distribciones e inciar su planaficación para instalarlos.  
Tareas a realizar el próximo día: Retirar cables en malestado

---

# DIA 4 [20-04-23]
Hoy hemos dado los primeros pasos en el proyecto, más especificamente en la parte de la infraestructura de red. 
Hemos hecho una serie de configuraciones básicas en el router de Mikrotik, para poder tener acceso a internet para poder avanzar otras partes del proyecto (posteriormente iremos cambiando las configuraciones y añadiendo nuevas). También hemos restaurado a valores de fábrica otros dispositivos de red. El switch de cisco, el punto de acceso de TP-LINK y el switch de TP-LINK pequeño.

Las configuraciones del router de MikroTik han sido las siguientes:
- Configuración del SRC-NAT para poder tener acceso a la red donde está el servidor de comunicaciones.
- Configuración del enrutamiento, para enviar las peticiones a internet de los equipos de nuestra LAN por el servidor de comunicaciones
