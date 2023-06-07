# INFORMACIÓN DE GRUPO

**GRUPO**: ALMIVIJONE S.L.

**INTEGRANTES**:
  - [ALBERTO CALATAYUD CASTAÑER](../integrants/AlbertoCalatayud.md)
  - [MIGUEL GARCÍA MIRÓ](../integrants/miguelgarciamiro.md)
  - [JOSE IVAN OLCINA](../integrants/JoseIvanOlcina.md)
  - [NEUS HERNÁNDEZ PASCUAL](../integrants/NeusHernandez.md)
  - [VICTOR FUSTER RICO](../integrants/VictorFuster.md)

---
(acabar de rellenar los días, aunque aquí no estén en la bitácora de "integrants" está mas o menos todo lo que hemos ido haciendo, más oriendo a cada uno pero juntando algunos se puede acabar bien.)



---

# DIA 18 [18-05-23]

**OBJETIVO DEL DIA:**

- El objetivo de hoy ha sido solucionar algunos problemas de conectividad física debido a la falta de latiguillos funcionales, establecer el SSH en el switch Cisco, instalar Zabbix, organizar los cables del patch panel, hacer funcionar RSAT y WAC para gestionar el servidor empresarial desde el ordenador Sysadmin, y configurar el servidor secundario.

**QUE SE HA PODIDO CONSEGUIR:**

- Se ha podido solucionar problemas de conectividad física, crimpando latiguillos para el patch panel. También se ha logrado instalar Zabbix y utilizar RSAT y WAC para gestionar el servidor.

**QUE NO HEMOS PODIDO CONSEGUIR, Y EL PORQUÉ:**

- No se ha podido unir el servidor secundario al dominio debido a la necesidad de generar nuevamente la SID. Además, no se ha podido cambiar el cable que conecta el switch Cisco al patch panel y tampoco se ha podido configurar la VLAN para el Sysadmin.

**TAREAS:**

- Tareas realizadas:
  - Solucionar problemas de conectividad física y crimpado de latiguillos para el patch panel
  - Intentar instalar Zabbix
  - Utilizar RSAT y WAC para gestionar el servidor



# DIA 17 [17-05-23]

**OBJETIVO DEL DIA:**

- Nuestro objetivo del día ha sido solucionar los problemas de conexión del switch de Cisco al MikroTik, reconfigurar todo el cableado para que quedase mucho mejor, configurar las IP a los servidores e instalar el TrueNAS.

**QUE SE HA PODIDO CONSEGUIR:**

- Lo que se ha podido conseguir ha sido solucionar los problemas que teníamos de conectividad entre el switch de Cisco y el MikroTik, instalar el TrueNAS y asignarle una IP, y poner IPs a los servidores.

**QUE NO HEMOS PODIDO CONSEGUIR, Y EL PORQUÉ:**

- Hemos podido conseguir todo lo propuesto para este día.

**TAREAS:**

- Tareas realizadas:
  - Reconfigurar el cableado
  - Configurar IP a los servidores
  - Configuración VLANs


---

# DIA 16 [16-05-23]

**OBJETIVO DEL DIA:**

- El objetivo del día ha sido acabar de configurar el DHCP para todos los clientes, lograr que las VLAN del switch de Cisco puedan llegar al MikroTik, implementar el script de interfaces, remodificar los cables y mejorar la disposición, y cambiar las IP de todos los servidores.

**QUE SE HA PODIDO CONSEGUIR:**

- Hemos podido conseguir poner la mayoría de IPs a los servidores y configurar el DHCP en el MikroTik para los clientes.

**QUE NO HEMOS PODIDO CONSEGUIR, Y EL PORQUÉ:**

- No hemos podido acabar de configurar todas las IPs a los servidores. Tampoco hemos podido lograr que las VLANs del Cisco lleguen al MikroTik.

**TAREAS:**

- Tareas realizadas:
  - Intentar conectar las VLANs del Cisco al MikroTik
  - Configurar las IPs de los servidores
  - Modificar los cables del rack
  - (En la tarde de este día) Miguel ha seguido mejorando el script de las interfaces

---

# DIA 15 [15-05-23]

**OBJETIVO DEL DIA**

El objetivo del día de hoy ha sido comprobar que el script funciona en el entorno (no ha funcionado como esperábamos), conseguir hacer funcionar el DHCP del mikrotik y el bouning entre este y el tp-link. También ponerle direccionamiento a los servidores virtualizados e instalar el active directory al servidor principal de ADDC.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Configuraciones básicas de Windows Server 2022 (Creación del dominio, IP, etc.), _
  - MIGUEL GARCÍA MIRÓ: _Probar el script mejorado,Hemos configurado también bounding en el switch de cisco, VLAN DHCP en el mikrotik (además de las IPs de cada subinterfaz)_
  - JOSE IVAN OLCINA: _Bounding entre TP-LINK y MIKROTIK, VLAN DHCP en el mikrotik (además de las IPs de cada subinterfaz)_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Configuraciones básicas de Windows Server 2022 (Creación del dominio, IP, etc.), Direccionamiento de los servidores_

**QUE SE HA PODIDO CONSEGUIR:**

- VLAN DHCP en el mikrotik (además de las IPs de cada subinterfaz)
- Bounding entre TP-LINK y MIKROTIK
- Configuraciones básicas de Windows Server 2022 (Creación del dominio, IP, etc.)
- Hemos configurado también bounding en el switch de cisco
- Probar el script mejorado
- Direccionamiento de los servidores

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

- No hemos podido acabar de crear los DHCP para todos los clientse
- El script no ha funcionado como esperábamos (esta tarde, cuando estoy escribiendo esto, ya está solucionado aparentemente ~kr0nosKM)
- No hemos podido acabar de direccionar todos los servidores virtuales.

**TAREAS:**

- VLAN DHCP en el mikrotik (además de las IPs de cada subinterfaz)
- Bounding entre TP-LINK y MIKROTIK
- Configuraciones básicas de Windows Server 2022 (Creación del dominio, IP, etc.)
- Hemos configurado también bounding en el switch de cisco
- Probar el script mejorado
- Direccionamiento de los servidores

---

# DIA 14 [12-05-23]

**OBJETIVO DEL DIA**

Nuestro objetivo del dia ha sido implementar el [script de interfaces](../altres/scripts/scriptInterfaces.py) usando el csv de la [hoja de cálculo](https://docs.google.com/spreadsheets/d/1npuxI7d_vjbFxbQzl2RSiZdsGHkH0_VvXVm98lLpaJA/edit#gid=1281501439) donde está toda la información de las interfaces. Realizar configuraciones de DHCP en el mikrotik, poner los servidores en su sitio, ocultando el cableado para mejor impresión y organización. Configuracion de bounding en los switches.

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _Configuración TP-LINK (configs variadas), CISCO (configs variadas)_
  - MIGUEL GARCÍA MIRÓ: _Implementación del script en casi todos los servidores. mikrotik (dhcp), Terminar de cablear el rack_
  - JOSE IVAN OLCINA: _Configuración TP-LINK (configs variadas), CISCO (configs variadas) y mikrotik (dhcp)_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Implementación del script en casi todos los servidores. Terminar de recoger todas las mac de las interfaces_

**QUE SE HA PODIDO CONSEGUIR:**

- Implementación del script en casi todos los servidores.
- Configuración TP-LINK (configs variadas), CISCO (configs variadas) y mikrotik (dhcp)
- Terminar de cablear el rack
- Terminar de recoger todas las mac de las interfaces

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

- DHCP del mikrotik
- Implementación del script, no nos dió tiempo a acabar de implementarlo, pero el sábado (esto lo estoy escribiendo más tarde del dia 12) he estado trabajando para automatizar mucho más el proceso.

**TAREAS:**

- Implementación del script
- Configuración TP-LINK (configs variadas), CISCO (configs variadas) y mikrotik (dhcp)
- Terminar de cablear el rack
- Terminar de recoger todas las mac de las interfaces

---

# DIA 13 [11-05-23]

**OBJETIVO DEL DIA**

Nuestro objetivo hoy ha sido configurar varias opciones sobre VLANs en los switches configurables y en el router mikrotik (bounding en tp-link y cisco,...), recablear toda la parte inferior del rack (donde están los servidores) por 2 motivos, 1 por una actualización en el proyecto y otra porque había una regleta que impedia una conexión ideal entre el cable y la NIC. También teníamos como objetivo obtener las MAC de las diferentes interfaces de red para posteriormente poder implementar el [script de interfaces](../altres/scripts/scriptInterfaces.py) poniendolo todo en csv de la [hoja de cálculo](https://docs.google.com/spreadsheets/d/1npuxI7d_vjbFxbQzl2RSiZdsGHkH0_VvXVm98lLpaJA/edit#gid=1281501439).

**QUE HA HECHO CADA INTEGRANDE DEL EQUIPO:**

  - ALBERTO CALATAYUD CASTAÑER: _No acudió a clase_
  - MIGUEL GARCÍA MIRÓ: _Añadir algua que otra configuración en el mikrotik, reorganizar todos los cables de la parte inferior del rack, para poder tenerlo todo mucho más organizado para que sea más fácil de operar. **(Por la noche me puse a crear el script para tenerlo al día siguiente operativo)**_
  - JOSE IVAN OLCINA: _Configuraciones en mikrotik, vlans en tp-link y cisco_
  - NEUS HERNÁNDEZ PASCUAL: _No acudió a clase_
  - VICTOR FUSTER RICO:  _Obtener las MAC de todas las interfaces de red_

**QUE SE HA PODIDO CONSEGUIR:**

- Obtener gran parte de las MAC de las interfaces
- Configurar las VLANs en los switches
- Reorganizar todos los cables de la parte inferior del rack 

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

- Terminar de añadir los servidores en la parte inferior del rack (el reorganizar los cables consumió mucho tiempo ~1 hora)
- Obtención de todas las direcciones MAC

**TAREAS:**

- Configurar VLANs cisco
- Configurar TP-LINK (bounding, etc)
- Configurar Mirkotik
- Reorganizar todos los cables de la parte inferior del rack
- Recoger información sobre las MAC de las interfaces

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
