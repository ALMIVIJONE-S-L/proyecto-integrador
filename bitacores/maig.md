# INFORMACIÓN DE GRUPO

**GRUPO**: ALMIVIJONE S.L.

**INTEGRANTES**:
  - [ALBERTO CALATAYUD CASTAÑER](../integrants/AlbertoCalatayud.md)
  - [MIGUEL GARCÍA MIRÓ](../integrants/miguelgarciamiro.md)
  - [JOSE IVAN OLCINA](../integrants/JoseIvanOlcina.md)
  - [NEUS HERNÁNDEZ PASCUAL](../integrants/NeusHernandez.md)
  - [VICTOR FUSTER RICO](../integrants/VictorFuster.md)

---

 En el dia de hoy hemos ido en las horas de Raúl, hoy Alberto no ha venido por lo que mientras que Jose y Miguel configuraban las VLAN y todo esol, yo he ido apuntando las direcciónes MAC de las redes de los servidores para así poder tener un registro como no me ha dado tiempo porque como hemos tenido que cambiar la distribución de los servidores porque al cambiar los profesores algunos puntos teniamos que hacer mejor la distribución porque nos costaba hacer algunas cosas.

 ### 12-05-2023  
 En el dia de hoy hemos ido en las horas de Juan, hoy me he puesto con la identificación de las mac de los servidores y con el script que habia hecho Miguel para cambiar el nombre de las interfaces de red, este script coge las MAC y le cambia el nombre de la interfaz para que pase a llamarse como nosotros queramos, para que se haga automaticamente al iniciar lo hemos hecho por crontab.Por otro lado Jose y Alberto estaban configurando el microtik y los switches.

# DIA 14 [12-05-23]

Nuestro objetivo del dia ha sido implementar el [script de interfaces](../altres/scripts/scriptInterfaces.py) usando el csv de la [hoja de cálculo](https://docs.google.com/spreadsheets/d/1npuxI7d_vjbFxbQzl2RSiZdsGHkH0_VvXVm98lLpaJA/edit#gid=1281501439) donde está toda la información de las interfaces. Agregar VLANs

---

# DIA 13 [11-05-23]

**OBJETIVO DEL DIA**

Nuestro objetivo hoy ha sido configurar varias opciones sobre VLANs en los switches configurables y en el router mikrotik (bounding en tp-link y cisco,...), recablear toda la parte inferior del rack (donde están los servidores) por 2 motivos, 1 por una actualización en el proyecto y otra porque había una regleta que impedia una conexión ideal entre el cable y la NIC. También teníamos como objetivo obtener las MAC de las diferentes interfaces de red para posteriormente poder implementar el [script de interfaces](../altres/scripts/scriptInterfaces.py) poniendolo todo en csv de la [hoja de cálculo](https://docs.google.com/spreadsheets/d/1npuxI7d_vjbFxbQzl2RSiZdsGHkH0_VvXVm98lLpaJA/edit#gid=1281501439)

---

# DIA 12 [10-05-23]

**OBJETIVO DEL DIA:**

Nuestro objetivo el dia de hoy ha sido terminar la configuración inicial de VLANs en los switches de tp-link y cisco. También era fabricar unos cuantos más de latiguillos, además de configurar el mikrotik con las subinterfaces.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Crimpar el patch panel_
  - MIGUEL GARCÍA MIRÓ: _Configurar Bounding, VLANs en el Mirkotik_
  - JOSE IVAN OLCINA: _Reparar (crimpar) algunos latiguillos y extensores de red, Instalar algunos programas necesarios para el ordenador SYSADMIN._
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Desinstalar WAC de los ordenadores clientes (porque la img de clonezilla desplegada ya la tenía). Reconfigurar el punto de acceso WIFI_

**QUE SE HA PODIDO CONSEGUIR:**

- Configurar Bounding, VLANs en el Mirkotik
- Configuración básica de las vlans tplink grande
- Configuración básica de las vlans en cisco
- Creación de latiguillos
- Crimpar cables faltantes en el patch panel

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

- DHCP del mikrotik, porque nos faltava determinar las IPs que tendrán los servidores y sin esto no es posible establecer las puertas de enlace.
- Terminar de configurar el switch cisco.

**TAREAS:**

- Configuraciones iniciales de las VLANs de los switches de CISCO y TP-LINK.
- Configuracion básica de VLANs, bounding y a medias con el DHCP del mikrotik.
- Crimpar cables faltantes en el patch panel.
- Crimpar latiguillos.

# DIA 11 [09-05-23]

**OBJETIVO DEL DIA**

Nuestro objetivo era, primero acabar de instalar virtualbox y desplegar las OVAs en los servidores. También organizar todo el cableado de los equipos, porque estaban muy desordenados debido a las pruebas hechas anteriormente, etc. También teníamos pensado empezar a configurar las vlans en por lo menos el switch del tplink.
Además, también hemos empezado a programar la intranet de la empresa.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _empezar a programar la intranet de la empresa_
  - MIGUEL GARCÍA MIRÓ: _acabar de instalar virtualbox y desplegar las OVAs en los servidores,  También organizar todo el cableado de los equipos (bastante larga, por tener que recablear todo_
  - JOSE IVAN OLCINA: _configurar las vlans en por lo menos el switch del tplink_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Ayudar a organizar todo el cableado de los equipos_

**QUE SE HA PODIDO CONSEGUIR:**

Hemos podido conseguir todo lo propuesto, menos por las VLANs, que no las acabamos de configurar

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

VLANs del swtitch de TP-LINK

**TAREAS:**

- Programar intranet
- Acabar de instalar vbox y las ovas
- Recablear toda la sede
- VLANs en el TP-LINK

---

# DIA 10 [08-05-23]

**OBJETIVO DEL DIA:**

Instalar virtualbox en los servidores físicos además de desplegar las OVAs múltiples (previamente creadas por @kr0nos). Reparar algunos latiguillos. Restaurar el punto de acceso y volverlo accesible por wireless

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Crimpar el patch panel_
  - MIGUEL GARCÍA MIRÓ: _Instalar virtualbox 7.0, enviar mediante el comando SCP las OVAs a los distintos ordenadores, desplegar las OVAs en un servidor de tres_
  - JOSE IVAN OLCINA: _Reparar (crimpar) algunos latiguillos y extensores de red, Instalar algunos programas necesarios para el ordenador SYSADMIN._
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Desinstalar WAC de los ordenadores clientes (porque la img de clonezilla desplegada ya la tenía). Reconfigurar el punto de acceso WIFI_

**QUE SE HA PODIDO CONSEGUIR:**

Instalar virtualbox 7.0, enviar mediante el comando SCP las OVAs a los distintos ordenadores, desplegar las OVAs en un servidor de tres. Instalar algunos programas necesarios para el ordenador SYSADMIN. Desinstalar WAC de los ordenadores clientes (porque la img de clonezilla desplegada ya la tenía). Reconfigurar el punto de acceso WIFI. Reparar (crimpar) algunos latiguillos y extensores de red.

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido acabar de desplegar las OVAs múltiples.

**TAREAS:**

- Instalar virtualbox 7.0, enviar mediante el comando SCP las OVAs a los distintos ordenadores, desplegar las OVAs en un servidor de tres.
- Instalar algunos programas necesarios para el ordenador SYSADMIN
- Desinstalar WAC de los ordenadores clientes (porque la img de clonezilla desplegada ya la tenía)
- Reconfigurar el punto de acceso WIFI.
- Reparar (crimpar) algunos latiguillos y extensores de red.

---

# DIA 9 [04-05-23]

**OBJETIVO DEL DIA:**

Acabar de instalar los servidores y acabar el patch panel

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Crimpar el patch panel_
  - MIGUEL GARCÍA MIRÓ: _Instalación de servidores_
  - JOSE IVAN OLCINA: _Crimpar el patch panel_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Instalación de servidores_

**QUE SE HA PODIDO CONSEGUIR:**

Hemos podido instalar los SO a los servidores y hemos casi que acabado de crimpar el patch panel

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido acabar de crimpar el patch panel por falta de tiempo, pero nos quedó muy poco

**TAREAS:**

- Instalar los servidores
  - _Al final descubrímos porque el clonezilla iba tan mal y era porque al poner 2 clonezillas al mismo tiempo en vbox con diferentes tarjetas de red, vbox se queda colgado y las máquinas no funcionan correctamente_
- Crimpar la mayoría de clables necesarios para el patch panel.

---

# DIA 8 [03-05-23]

**OBJETIVO DEL DIA:**

_Cabe recalcar que tuvimos menos tiempo ese dia que el anterior, ~1h_

Nuestro objetivo del dia ha sido empezar a montar el patch panel, revisando todos los elementos del esquema de red, preparar la imagen para los servidores.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Revisar el esquema de red y empezar a montar el patch panel_
  - MIGUEL GARCÍA MIRÓ: _Terminar de hacer la imágen nueva del sistema de los servidores_
  - JOSE IVAN OLCINA: _Revisar el esquema de red y empezar a montar el patch panel_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Terminar de hacer la imágen nueva del sistema de los servidores_

**QUE SE HA PODIDO CONSEGUIR:**

Hacer la imagen del sistema, ya que la anterior estaba en BIOS, y ahora está en UEFI y revisar el esquema de red y empezar a montar el patch panel

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido instalarlo en los equipos servidores porque la imagen tardó mucho en realizarse.

**TAREAS:**

- Hacer la imagen del sistema de los servidores
- Revisar el esquema de red
- Empezar a hacer el patch panel

---

# DIA 7 [02-05-23]

**OBJETIVO DEL DIA:**

_Cabe recalcar que no tuvimos mucho tiempo ese dia_

Revisar el esquema de red y seguir haciendolo. Terminar de hacer la imagen nueva del sistema de los clientes y volverlo a instalarlo.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Revisar el esquema de red y seguir haciendolo_
  - MIGUEL GARCÍA MIRÓ: _Terminar de hacer la imágen nueva del sistema de los clientes_
  - JOSE IVAN OLCINA: _Revisar el esquema de red y seguir haciendolo_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Terminar de hacer la imágen nueva del sistema de los clientes_

**QUE SE HA PODIDO CONSEGUIR:**

Hacer la imagen del sistema, ya que la anterior estaba en BIOS, y ahora está en UEFI y modificar el esquema de red.

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido instalarlo en los equipos clientes porque la imagen tardó mucho en realizarse.

**TAREAS:**

- Hacer la imagen del sistema
- Revisar el esquema de red
- Modificar el esquema de red
- Reconectar todos los clientes
