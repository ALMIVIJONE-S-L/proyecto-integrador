(poner formato)

26-05: Antes de ir a clase, he estado realiznado la tarea 3.1, ya que todavía no teníamos nada avanzado de esta.

25-05: Hoy he conseguido solucionar uno de los problemas que hacía no funcionar correctamente al bounding. Este problema es que había un latiguillo que no hacía pasar nada de electricidad, así que lo he sustituido y el bounding ha empezado a funcionar. Después hemos descubierto que depende de como se coloque el cable del sysadmin (del puerto patch panel) al switch funciona o no la conexión, por lo visto el crimpado del patchpanel esta estropeado, pero eso el dia siguiente tendré que ocuparme de solucionarlo.

24-05: Hoy no hemos tenido mucho tiempo (~1h) para estar en el taller, en este tiempo he estado intentando solucionar el mismo problema en la red que el de dias anteriores. En este caso, he actualizado el firmware del dispositivo mikrotik y ahora queda hacer pruebas para ver si funciona, ya que por lo visto, es un bug. Mañana en el taller veremos si ha funcionado. De todas formas, ahora el mikrotik ha dejado de enviar peticiones con la ip 129.0.0.VLAN así que un problema ha sido solucionado.

23-05: Hoy he conseguido solucionar el primer problema de red, el cual intenté solucionar ayer. El problema estaba que hace un tiempo añadí 2 puertos más a la vlan de servidores en modo untagged, pero en la configuración de puertos de red se me olvidó añadirle a los 2 nuevos puertos la vlan 10, por eso tenían la de por defecto (1) y no funcionaban los pings en la red. después de solucionar este error, he probado el truenas y funcionaba. Tambien he añadido a putty algunas conexiones a los diferentes máquinas virtuales Linux. Luego de esto he estado el resto del tiempo intentar ver porque la red no funciona correctamente ya que parece ser que hay un bucle por ahí o algo que impide que la red no funcione correctamente, he revisado los logs, usando el  el sniffer de pauqetes,... pero no he solucionado el problema

22-05: Hoy hemos estado 2 horas en el taller, y en estas 2 horas lo único que he hecho ha sido intentar solucionar un problema de red en los servidores del DELL 3. Después de buscar mucho, he encontrado un problema con la interfaz de red externa, ya que cuando se le asigna a la maquina virtual no funciona pero si se le asigna la de la placa base puede hacer ping a todos los equipos de la red. Una cosa que tengo que solucionar el siguiente dia es eso ya que no acabé.

dia 19-05: Hoy antes de ir al taller he aprovechado 2 horas para ir realizando el script de powershell. He conseguido acabar de configurar el SSH del switch de cisco (el problema estaba en que le faltaba poner tagged en la vlan 20 del puerto (del tplink) donde se conecta el cisco, para que el usuario admin pueda conectarse y habilitar la vlan 20 en el trunk del cisco. También hemos acabado de hacer funcionar zabbix (únicamente acabé de hacer el manual anoche, y hoy lo hemos implementado, todo ha funcionado como se esperaba). Al final me he quedado intentando establecer una conexińo entre el mikrotik y el servidor TrueNAS. Hemos también solucionado un problema en la red en el ordenador del syssadmin. También he ayudado en solucionar el error del sid del windows server. Cambiar 2 puertos de valn 

día 18-05: hoy he crimpado y buscado por las cajas de cables algunos latiguillos que necesitábamos para la conexión de los servidores en el patch panel al cisco. También he empezado a establecer SSH en el switch Cisco ( no he acabado). A oche prepare un pequeño manual para instalar zabbix,el cual probé en una máquina virtual, pero no hoy al probarlo Víctor no le ha funcionado, así que tendré que revisarlo.
También he reorganizado los cables del patch panel. 
faltaría cambiar un cable de lugar en el switch Cisco y poner correctamente la vlan de administración del sistema.

dia 17-05:
Solucionar problemas entre la conexión del switch cisco al mikrotik. Pensar y modificar cables en el rack (ya que esta muy desordenado, y cada dia voy modificando algo nuevo hasta dejar algo más profesional todas las conexiones, esto también involucra configuración en switches y router.)

dia 16-05:
Hemos acabado de configurar el DHCP para todos los clientes, hemos tenido más problemas con el script (esta tarde, cuando estoy escribiendo esto, ya está solucionado aparentemente). Pensar y modificar cables en el rack (ya que esta muy desordenado, y cada dia voy modificando algo nuevo hasta dejar algo más profesional todas las conexiones, esto también involucra configuración en switches y router.)

dia 15-05:
Probar el script mejorado,Hemos configurado también bounding en el switch de cisco, VLAN DHCP en el mikrotik (además de las IPs de cada subinterfaz)

dia 12-05:
Implementación del script en casi todos los servidores. mikrotik (dhcp), Pensar y modificar cables en el rack (ya que esta muy desordenado, y cada dia voy modificando algo nuevo hasta dejar algo más profesional, en este caso he organizaod bastante todas las conexiones, esto también involucra configuración en switches y router.)

dia 11-05:
Añadir configuraciones al mikrotik, reorganizar todos los cables de la parte inferior del rack para poder tenerlo todo mucho más organizado para que sea más fácil de operar. (Por la noche me puse a crear el script para tenerlo al día siguiente operativo.

...

# DIA 12 [10-05-23]

**OBJETIVO DEL DIA:**

Nuestro objetivo el dia de hoy ha sido terminar la configuración inicial de VLANs en los switches de tp-link y cisco. También era fabricar unos cuantos más de latiguillos, además de configurar el mikrotik con las subinterfaces.

**QUE SE HA PODIDO CONSEGUIR:**

- Configurar Bounding, VLANs en el Mirkotik, esquema de electricidad, modificar el esquema de red, colocar tarjetas de red faltantes en los servidores

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

- DHCP del mikrotik, porque nos faltava determinar las IPs que tendrán los servidores y sin esto no es posible establecer las puertas de enlace.

**TAREAS:**

- Configuracion básica de VLANs, bounding y a medias con el DHCP del mikrotik.
- Colocar las tarjetas de red faltantes en los servidores
- Empezar a cambiar los nombres de las tarjetas de red de los servidores.
- Crear el esquema de electricidad usado en la sede
- Modificar el esquema de red (añadiendole nuevas cosas)

# DIA 11 [09-05-23]

**OBJETIVO DEL DIA**

Mi objetivo era, primero acabar de instalar virtualbox y desplegar las OVAs en los servidores. También organizar todo el cableado de los equipos, porque estaban muy desordenados debido a las pruebas hechas anteriormente, etc. 

**QUE SE HA PODIDO CONSEGUIR:**

He podido conseguir todo lo propuesto.

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

Nada hoy.

**TAREAS:**

- Acabar de instalar vbox y las ovas
- Recablear toda la sede
- Empalmar cables de corriente para aprovechar una regleta.

---

# DIA 8 [08-05-23]

**OBJETIVO DEL DIA:**

Instalar las OVAs múltiples en los servidores.

**QUE SE HA PODIDO CONSEGUIR:**

Instalar los SO a los servidores

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

Acabar de desplegar las OVAs múltiples

**TAREAS:**

- Crear las OVAS (esto lo hice el día anterior **en casa**)
- Instalar virtualbox 7.0 en los servidores mediante [un script](../altres/scripts/instalacionVbox.sh)
- Desplegar las OVAs Múltiples, previamente enviando a cada servidor la correspondiente mediante el comando SCP.

# DIA 7 [04-05-23]

**OBJETIVO DEL DIA:**

_Cabe recalcar que tuvimos menos tiempo ese dia que el anterior, ~1h_

Acabar de instalar los servidores 

**QUE SE HA PODIDO CONSEGUIR:**

Instalar los SO a los servidores

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

Quizás la instalación de los clientes que falta con UEFI, pero no estaba en nuestros planes hoy.

**TAREAS:**

- Instalar los servidores
  - _Al final descubrímos porque el clonezilla iba tan mal y era porque al poner 2 clonezillas al mismo tiempo en vbox con diferentes tarjetas de red, vbox se queda colgado y las máquinas no funcionan correctamente_
- Actualizar el fichero de la bitácora
- (en casa) Avanzar el esquema de red

---

# DIA 6 [03-05-23]


**OBJETIVO DEL DIA:**

_Cabe recalcar que tuvimos menos tiempo ese dia que el anterior, ~1h_

Preparar la imagen para los servidores.

**QUE SE HA PODIDO CONSEGUIR:**

Hacer la imagen del sistema, ya que la anterior estaba en BIOS, y ahora está en UEFI de los servidores.

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No hemos podido instalarlo en los equipos servidores porque la imagen tardó mucho en realizarse.

**TAREAS:**

- Hacer la imagen del sistema de los servidores
- Actualizar el fichero de la bitácora

---

# DIA 5 [02-05-23]

**OBJETIVO DEL DIA:**

_Cabe recalcar que no tuvimos mucho tiempo ese dia_

Terminar de hacer la imagen nueva del sistema de los clientes y volverlo a instalarlo.

**QUE SE HA PODIDO CONSEGUIR:**

Hacer la imagen del sistema, ya que la anterior estaba en BIOS, y ahora está en UEFI 

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No he podido acabar porque la imagen tardó mucho en realizarse.

**TAREAS:**

- Hacer la imagen del sistema
- Reconectar todos los clientes
- Actualizar el fichero de la bitácora

--- 

# DIA 4 [28-04-23]

**OBJETIVO DEL DIA:**

Mi objetivo hoy ha sido desplegar la imagen de windows a los equipos con clonezilla, preparar la imágen de debian para los servidores, revisar el esquema de red y pensar otras soluciones

**QUE SE HA PODIDO CONSEGUIR:**

Mi objetivo hoy ha sido instalar los sistemas operativos de windows a los equipos clientes desde red y los servidores

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No he podido acabar de crear la imágen de debian e instalarla en los equipos de servidores host, ya que faltaban algunas configuraciones importantes antes de desplegarlo en los 3 servidores y no dió tiempo a hacerlas

**TAREAS:**

- Instalar la imagen del sistema windows con clonezilla a los clientes
- Configurar el sistema debian a desplegar en los servidores.
- Actualizar el fichero de la bitácora

---

# DIA 3 [26-04-2023]

**OBJETIVO DEL DIA:**

Mi objetivo hoy ha sido instalar los sistemas operativos de windows a los equipos clientes desde red.

**QUE SE HA PODIDO CONSEGUIR:**

He conseguido obtener una imagen del sistema windows con clonezilla. (mientras se creaba, estuve haciendo pruebas con otra máquina con clonezilla, para desplegarlo lo más correctamente posible)

**QUE NO HEMOS PODIDO CONSEGUIR, I EL PORQUÉ:**

No he podido acabar de instalar los sistemas operativos porque la imagen del sistema ha tardado mucho en crearse (aproximadamente 1h), en la próxima sesión acabaré mi tarea de instalarlos.

**TAREAS:**

- Clonar imagen del sistema windows con clonezilla (ha tardado bastante)
- Hacer pruebas con otra máquina con clonezilla, para poder desplegarlo correctamente la próxima sesión
- Actualizar el fichero de la bitácora

---

# DIA 2 [20-04-2023]

**OBJETIVO DEL DIA:**

Mi objetivo principal era dejar configurado el router mikrotik para poder tener acceder a internet desde nuestra LAN y restaurar a valores de fábrica el switch de cisco.

**QUE HE PODIDO CONSEGUIR:**

he podido cumplir todo lo que tenía previsto por hacer, que era tener internet en la LAN y devolver a los valores de fábrica el equipo de cisco.

**QUE NO HE PODIDO CONSEGUIR, I EL PORQUÉ:**

He podido conseguir todo lo que tenía pensado.

**TAREAS**:

- Puesta en marcha y configuración básica del router mikrotic.
  - **TAREAS**: Configuración del SRCNAT, ENRUTAR, DHCP, INTERFACES...
- Restaurar el switch cisco.
- Modificar la bitácora de abril.

---

# DIA 1 [18-04-2023]

- Puesta en marcha del servidor de comunicacinoes (con la configuración previa de los alumnos de segundo).
  - **TAREAS**: atornillar la placa metálica en el rack para sostener el servidor, conectar cables correspondientes.
- Comprobación de que hay acceso a internet.
  - Probar con el disco externo en alguno de los servidores la infraestructura de red y obtener acceso a internet. 

---

# DIA 0 [24-03-2023]

Modificación del fichero del inventario
