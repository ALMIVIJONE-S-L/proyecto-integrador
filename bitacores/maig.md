# INFORMACIÓN DE GRUPO

**GRUPO**: ALMIVIJONE S.L.

**INTEGRANTES**:
  - [ALBERTO CALATAYUD CASTAÑER](../integrants/AlbertoCalatayud.md)
  - [MIGUEL GARCÍA MIRÓ](../integrants/miguelgarciamiro.md)
  - [JOSE IVAN OLCINA](../integrants/JoseIvanOlcina.md)
  - [NEUS HERNÁNDEZ PASCUAL](../integrants/NeusHernandez.md)
  - [VICTOR FUSTER RICO](../integrants/VictorFuster.md)

---

# DIA 31 [31-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en el desarrollo del script de PowerShell, encontrar una solución temporal para el servidor NAS y la cabina de discos, e investigar sobre DFS.

**QUE HEMOS PODIDO HACER:**

- Avanzar en el desarrollo del script de PowerShell antes de asistir al taller.

- Encontrar una solución temporal para el servidor NAS al indicarle la misma interfaz de red que el servidor de datos, lo cual permite que salgan con la misma MAC. Aunque esta solución funciona, se busca resolver el error para poder utilizar la interfaz de red dedicada.

- Investigar sobre DFS, aunque no se ha logrado completar el trabajo relacionado.

**QUE NO HEMOS PODIDO HACER:**

- Aún no se ha solucionado de manera definitiva el problema del servidor NAS y la cabina de discos (TrueNAS). Se descubrió que los scripts implementados por Miguel para renombrar las interfaces de red presentaban ciertos problemas, los cuales se pudieron solventar. Sin embargo, persiste un problema con el puerto 5996 en el servidor de datos para la conexión a través de HTTPS mediante el WAC. No ha habido tiempo suficiente para terminar de solucionarlo.

**SIGUIENTES PASOS:**

- Continuar trabajando en la solución definitiva para el problema del servidor NAS y la cabina de discos, especialmente en relación con el puerto 5996 en el servidor de datos.

- Completar el trabajo relacionado con DFS.

- Mantener el enfoque en el desarrollo del script de PowerShell y seguir avanzando en su implementación.

--- 

# DIA 30 [30-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos centrado en la resolución de problemas de red, la configuración de puntos de acceso y la preparación de comandos para abordar problemas específicos. También hemos trabajado en la configuración y compartición del volumen iSCSI de datos y la creación de la pool de backups.

**QUE HEMOS PODIDO HACER:**

- Continuar resolviendo problemas de red, aunque con menos frecuencia en cuanto a la desaparición de la MAC del equipo sysadmin en la tabla ARP.

- Solucionar un problema de conectividad en la red interna (SAN) entre el NAS y el servidor de datos, específicamente con el funcionamiento del iSCSI. Se ha brindado ayuda en la reparación de este problema.

- Conectar y configurar un punto de acceso, con asistencia para determinar su ubicación adecuada.

- Establecer provisionalmente el DNS del centro junto con el de ADDC para los clientes que utilizan DHCP.

- Agregar el switch Cisco a Zabbix para su monitoreo.

- Preparar una serie de comandos para abordar problemas y resolver situaciones, como el apagado inesperado de los servidores W22 y SID, entre otros. Estos comandos han sido utilizados durante el día.

- Realizar el crimpado de un cable para un servidor del SAN que presentaba problemas de funcionamiento.

**QUE NO HEMOS PODIDO HACER:**

- Aún no se ha solucionado por completo el problema del agente Zabbix en los servidores, el cual no funciona según lo esperado. Se requiere encontrar una solución alternativa para su ejecución.

- No se ha completado la conexión del SAI a la red.

**SIGUIENTES PASOS:**

- Configurar y compartir correctamente el volumen iSCSI de datos y crear la pool de backups.

- Continuar investigando y resolviendo problemas de conectividad en la red interna.

- Avanzar en la creación de las carpetas necesarias, asignación de permisos y compartición en el servidor de datos (recurso iSCSI datos).


--- 

# DIA 29 [29-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos centrado en la resolución de problemas de conectividad de red y en la ejecución del cliente Zabbix en los servidores Windows Core.

**QUE HEMOS PODIDO HACER:**

- Continuar investigando y solucionando los problemas de red que persisten. Se ha descubierto un posible origen del problema relacionado con la tabla ARP en los clientes Windows, donde la entrada que vincula la dirección IP de la puerta de enlace y la dirección MAC desaparece de manera intermitente. Se ha iniciado la tarea de determinar la causa de este comportamiento.

- Ejecutar el cliente Zabbix (MSI) en algunos de los servidores Windows Core, utilizando un servidor local HTTP para la instalación.

**QUE NO HEMOS PODIDO HACER:**

- Aún no se ha resuelto por completo el problema de conectividad de red, que puede estar relacionado con la tabla ARP y la desaparición intermitente de la entrada de la puerta de enlace en los clientes Windows. Es necesario continuar investigando para identificar y solucionar la causa raíz del problema.

--- 

# DIA 26 [26-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en solucionar problemas de red y realizar configuraciones relacionadas con la monitorización y el servidor de datos.

**QUE HEMOS PODIDO HACER:**

- Solucionar problemas de red que afectaban a la conexión del sysadmin. Se ha realizado el re-crimpado de una roseta que se utilizó como extensor y se han comprobado los latiguillos relacionados.
- Resolver un problema en el servidor de monitorización.
- Añadir el switch TP-LINK y el router Mikrotik al servidor Zabbix.
- Configurar un host para el Zabbix en el DNS del dominio principal.
- Ayudar en el envío del archivo ejecutable del agente de Zabbix al servidor de datos.

**QUE NO HEMOS PODIDO HACER:**

- Persisten los problemas de conectividad en la red. Hemos identificado que puede estar relacionado con la tabla ARP. Continuaremos investigando y trabajando en la solución de estos problemas en el próximo día de trabajo.
- No hemos podido comenzar la configuración del servidor de datos que estará conectado a la cabina de discos. Los problemas de red han dificultado el acceso remoto al servidor mediante WAC y hacerlo directamente desde el servidor no ha sido la opción más óptima. Abordaremos esta configuración en el próximo día de trabajo.


--- 

# DIA 25 [25-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos centrado en resolver problemas de red y abordar algunas configuraciones iniciales en TrueNAS.

**QUE HEMOS PODIDO HACER:**

- Solucionar el problema del bounding que no funcionaba correctamente debido a un latiguillo defectuoso. Se ha sustituido el latiguillo y ahora el bounding está funcionando correctamente.
- Identificar que la conexión del cable del sysadmin al switch depende de cómo se coloca el cable en el puerto del patch panel. Se ha observado que el crimpado del patch panel está estropeado y se abordará la solución a este problema en el próximo día de trabajo.

**QUE NO HEMOS PODIDO HACER:**

- Aún persisten problemas de red, principalmente en el PC-5 (sysAdmin). Continuaremos investigando y trabajando para resolver estos problemas en el próximo día de trabajo.
- Se ha asignado un nombre de dominio al TrueNAS (servidornas.barcelona.lan) y se han realizado algunas configuraciones iniciales junto con Alberto, incluyendo la creación de una pool de datos en el mismo.

--- 

# DIA 24 [24-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos centrado en resolver los problemas de red y dedicar tiempo a aprender sobre el funcionamiento de TrueNAS.

**QUE HEMOS PODIDO HACER:**

- Actualizar el firmware del dispositivo MikroTik en un intento de solucionar el problema de la red. Se espera que esta actualización resuelva un posible bug y se realizarán pruebas en el taller de mañana para verificar su funcionamiento.
- Solucionar el problema de las solicitudes con la dirección IP 129.0.0.VLAN que el MikroTik dejó de enviar. Esto representa un progreso en la resolución de los problemas de red.

**QUE NO HEMOS PODIDO HACER:**

- Lamentablemente, no hemos logrado resolver por completo el problema de la red que afecta el correcto funcionamiento. Continuaremos trabajando en ello en el taller de mañana para encontrar una solución efectiva.
- Dado los problemas de red, hemos dedicado tiempo a recopilar información y aprender sobre el funcionamiento de TrueNAS mediante la toma de apuntes y la investigación en internet.

--- 

# DIA 23 [23-05-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en resolver problemas de configuración de red y realizar diferentes tareas de conexión y unión al dominio.

**QUE HEMOS PODIDO HACER:**

- Solucionar el problema de configuración de los puertos de red en la VLAN de servidores, al agregar correctamente la VLAN 10 a los dos puertos adicionales que se habían olvidado, lo cual permitió que los pings en la red funcionaran correctamente.
- Probar y confirmar el funcionamiento adecuado de TrueNAS después de solucionar el error mencionado.
- Configurar conexiones en PuTTY para acceder a las diferentes máquinas virtuales Linux.
- Unir los clientes restantes al dominio y verificar que se hayan unido correctamente.

**QUE NO HEMOS PODIDO HACER:**

- Lamentablemente, no hemos logrado solucionar el problema de la red que no funciona correctamente debido a un posible bucle u otra causa desconocida. A pesar de revisar los logs y utilizar el sniffer de paquetes, el problema aún no ha sido resuelto. Continuaremos investigando y buscando una solución efectiva.

--- 

# DIA 22 [22-05-23]

**OBJETIVO DEL DIA:**

- Hoy nos hemos centrado en resolver problemas de red y configurar diferentes aspectos de nuestra infraestructura.

**QUE HEMOS PODIDO HACER:**

- Intentar solucionar un problema de red en los servidores del Dell 3, identificando un problema con la interfaz de red externa que requiere una solución pendiente para el próximo día.
- Configurar el WAC para la gestión remota de los servidores empresariales (AD).
- Unir algunos clientes al dominio.
- Instalar VirtualBox en los PC-3 y PC-4 para la virtualización de dos departamentos en cada uno.
- Crear e iniciar la instalación de las máquinas virtuales para los departamentos Técnico y Laboratorio.

**QUE NO HEMOS PODIDO HACER:**

- Lamentablemente, no hemos logrado solucionar completamente el problema de red en los servidores del Dell 3, específicamente relacionado con la asignación de la interfaz de red externa a las máquinas virtuales. Este tema requerirá más análisis y una solución pendiente para el próximo día.

--- 

# DIA 19 [19-05-23]

**OBJETIVO DEL DIA:**

- Hoy nuestro objetivo ha sido realizar diversas tareas de configuración y solución de problemas en nuestra infraestructura.

**QUE HEMOS PODIDO HACER:**

- Realizar el script de PowerShell antes de ir al taller.
- Configurar correctamente el SSH del switch de Cisco al agregar la etiqueta "tagged" en la VLAN 20 del puerto del TP-LINK que se conecta al Cisco, permitiendo que el usuario admin se conecte y habilite la VLAN 20 en el trunk del Cisco.
- Implementar y hacer funcionar Zabbix según lo planificado, tras finalizar el manual la noche anterior.
- Intentar establecer una conexión entre el MikroTik y el servidor TrueNAS.
- Solucionar un problema de red en el ordenador del sysadmin.
- Ayudar a solucionar el error del SID del Windows Server.
- Cambiar 2 puertos de VLAN.

**QUE NO HEMOS PODIDO HACER:**

- Lamentablemente, no hemos logrado completar la conexión entre el MikroTik y el servidor TrueNAS. Este tema requerirá más análisis y solución para su implementación adecuada.

---

**A PARTIR DE AQUÍ PARA ARRIBA LAS TAREAS SE REEMPLAZARÁN POR LO QUE HEMOS PODIDO HACER**

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
