# INFORMACIÓN DE GRUPO

**GRUPO**: ALMIVIJONE S.L.



---

# DIA 5 [26-04-23]

**OBJETIVO DEL DIA:**

Nuestro objetivo hoy ha sido instalar los sistemas operativos de windows a los equipos clientes desde red.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _No acudió a clase_
  - MIGUEL GARCÍA MIRÓ: _..._
  - JOSE IVAN OLCINA: _..._
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _..._

**QUE SE HA PODIDO CONSEGUIR:**

Hemos conseguido tener una imágen del sistema windows con clonezilla. Crimpar unos cuantos cables y comprobar otros cuantos más para más adelante.

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido acabar de instalar los sistemas operativos porque la imagen del sistema ha tardado mucho en crearse (aproximadamente 1h), en la próxima sesión nos encargaremos de instalarlos.

**TAREAS:**

.....

---

# DIA 4 [20-04-23]

**OBJETIVO DEL DIA:**

Nuestro objetivo principal era dejar una configuración básica de la red, para poder ir realizando las diferentes tareas a parte de la red, como la configuración de servidores, etc.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Restauración a valores de fábrica el punto de acceso y el switch TP-LINK SG2008._
  - MIGUEL GARCÍA MIRÓ: _Configuración del router mikrotic, restauración a valores de fábrica el switch de cisco._
  - JOSE IVAN OLCINA: _Configuración del router mikrotic, restauración a valores de fábrica el switch de cisco._
  - NEUS HERNÁNDEZ PASCUAL: _Restauración a valores de fábrica el punto de acceso y el switch TP-LINK SG2008._
  - VICTOR FUSTER RICO: _Restauración a valores de fábrica el punto de acceso y el switch TP-LINK SG2008._

**QUE SE HA PODIDO CONSEGUIR:**

Hemos podido conseguir todo lo que teníamos planteado desde un principio, que era tener internet en la LAN y devolver a los valores de fábrica los equipos

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

Nada, hemos podido conseguir todo lo propuesto para este día.

**TAREAS:**

Hoy hemos dado los primeros pasos en el proyecto, más especificamente en la parte de la red. 
Hemos hecho una serie de configuraciones básicas en el router de Mikrotik, para poder tener acceso a internet para poder avanzar otras partes del proyecto (posteriormente iremos cambiando las configuraciones y añadiendo nuevas). También hemos restaurado a valores de fábrica otros dispositivos de red. El switch de cisco (borrando también las VLANs que estaban creadas en el router), el punto de acceso de TP-LINK y el switch de TP-LINK pequeño.

Las configuraciones del **router de MikroTik** han sido las siguientes:
> - Configuración de interfaces, hemos hecho que por la interfaz **ETHER 1** esté conectado al la red del servidor de comunicacinoes y la interfaz **ETHER 4** sea la red LAN de la empresa, pero esto es provisional, más adelante cuando tengamos la red un poco más clara y con mas información cambiará.
> - Configuración del SRC-NAT para poder tener acceso a la red donde está el servidor de comunicaciones.
> - Configuración del enrutamiento, para enviar las peticiones a internet de los equipos de nuestra LAN por el servidor de comunicaciones.
> - Configuración de un pequeño servicio DHCP, para no tener que poner manualmente las IPs al conectar los clientes y ahorrar un poco más de tiempo para invertirlo a la configuración propia del sistema informático.

---

# DIA 3 [18-04-23]
Hemos realizado la comprobación de red en taller, para poner en marcha posteriormente las instalaciones de sistemas operativos
Por otra parte, en clase hemos buscado información de las distribciones e inciar su planaficación para instalarlos.  
Tareas a realizar el próximo día: Retirar cables en mal estado

