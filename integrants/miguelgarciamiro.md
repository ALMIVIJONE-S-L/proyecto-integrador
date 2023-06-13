(poner formato)

13-06: Hoy hemos acabado de corregir todo lo que nos quedaba. He tenido que hacer lo de los diferentes tipos de servidores en el SAI porque no estaba configurado. También hemos intentando hacer funcionar el WDS, más o menos tocando lo del DHCP ha funcionado. He acabado también de configurar lo del rsync del servidor NAS.

12-06: Hoy hemos podido adelantar y corregir muchas cosas. Este fin de semana he tenido que estar confinado adelantando muchas partes del proyecto, pero ha merecido la pena. Este fin de semana he hecho todo lo de AWS, acabar la intranet, hacer pruebas con las copias de seguridad y deducir una "relativamente" buena forma de guardar las copias de seguridad.

En clase hemos acabado el WSUS, hemos hecho lo que hemos podido con lo de WDS, al final nos hemos dado cuenta que en windows core no funcionaba, así que lo hemos instalado en el servidor de aplicaciones. Hemos también adelantado la documentación de redes. También he implementado la página web de la intranet en el servidor de intranet, modificando también alguna de las opciones de apache para que la página por defecto fuese inicio.html 

Nos hemos quedado a falta de acabar de poner los permisos a las carpetas, hemos tenido problemas con el WDS ya que no desplegaba por algún tipo de opción que hay que añadir al DHCP del mikrotik.

09-06: Hoy he podido solucionar el problema que teníamos de ñaadir el switch cisco en zabbix, el problema no era de cisco, era del switch de TP-LINK, que como se tuvo que reiniciar (porque alguiend decidió hacer un bucle en la red) perdimos algo de progreso, ese progreso era permitir el tráfico tagged por el bounding entre el cisco y TP-LINK para que se pueda contactar con el switch cisco por la vlan de administración. También he acabado de añadir todos los servidores a zabbix, incluida la intranet, para esto he tenido que añadir 2 reglas en el firewall. También he conseguido establecer el servicio WSUS en el servidor principal, pero a falta de añadir los clientes al servicio WSUS. También he añadido una línea para acceder directamente cuando se ponga el dns del servidor apache del servidor de monitorización

08-06: Hoy he acabado de implementar el agente zabbix en todos los servidores, a falta de terminar de poner una regla en el mikrotik para poder dejar pasar tráfico con el puerto 10050 que es el del agente de zabbix. También he terminado de documentar la parte del agente de zabbix en los servidores linux y windows. Hemos tenido algunos problemas con las carpetas compartidas utilizando DFS, porque como el sistema que tenemos implementado no está preparado para el uso que le estamos dando (el tema de usar virtualbox, etc), esto provoca problemas de red recurrentes, pero nada que un,dos o incluso 3 reinicios de la máquina no pueda arreglar (en la mayoría de los casos.) 

En la hora de lenguaje de marcas hemos seguido con la página web, ya la tenemos a casi acabar.

07-06: Hoy he tenido que hacer una pequeña modificación al DFS, para evitar problemas. He instalado el agente de zabbix en la mayoría de los servidores windows (además de añadirlos a zabbix), me faltó hacerlo en los servidores linux y en el datos (windows). He descubierto que la IP de administración del switch cisco no está funcionando como debería ya que el SSH no funciona y tampoco la conexión con SNMP, no me ha dado tiempo a acabarlo hoy.

06-06: Hoy he desplegado (al fin) el script de usuarios, todo ha funcionado como lo previsto, ha funcionado a la primera, creando todos los usuarios, perfiles móviles, obligatorios y carpetas personales. También, antes de ejectuar el script, he terminado de configurar el DFS, la parte de **Namespace**.  En los directorios compartidos, he tambien puesto el script y el csv con los usuarios. He descargado los 2 programas necesarios para RemoteAPPTambién he acabado de configurar lo de RemoteDesktop (RemoteAPP) y ademas hasta lo hemos corregido ya. También he aplicado la mayoría de permisos necesarios en los directorios.

Me ha quedado por acabar los permisos del directorio compartido AdminDominio

05-06: Hoy hemos solucionado los problemas del DFS, configurandolo meidante powershell, también he solucionado los problemas de RemoteDesktop (RemoteAPP), el problema era que el servidor estaba en modo core, así que lo tuve que reinstalar en modo GUI. Tambien estuve creando el DMZ, el cual se quedó totalmente acabado (ya que el día anterior, por la tarde estuve pensando como hacerlo, esa tarde también estuve preparando los permisos para los directorios a compartir.

02-06: Hoy antes ir a clase he seguido haciendo el login de la intranet. También he hecho funcionar la conexión iSCSI entre Srv-Datos y Srv-NAS, el problema estaba en el firewall del servidor de windows, que no estaba permitiendo la conexión correcta con el servicio WinRM (usando wac _windows admin center_). Después hemos intentado hacer el DFS, pero no hemos podido acabarlo, porque la herramienta de administración del DFS no se ha acabado de instalar en el cliente sysadmin.

Nos ha faltado instalar la herramienta DFS en el cliente sysadmin.

01-06: Hoy hemos intentado solucionar un problema entra la conexión del WAC y el Servidor de datos, pero no se ha podido. La tarde de este día he acabado el script de usuarios de powershell el cual crea usuarios, perfiles móviles, obligatorios y las carpetas personales además de los grupos y unidades organizativas. Hemos empezado con el tema de la intranet de la empresa, yo he empezado con la pantalla de login.

31-05: Hoy antes de ir al taller he avanzado el script de powershell. Hemos solucionado un problema (de forma temporal) del servidor NAS, indicandole la misma interfaz que el servidor de datos (que tiene w22), así que salen con la misma MAC, esta forma funciona, pero lo ideal sería usar la interfaz de red dedicada, pero hasta que no se solucione el error no se podrá. No hemos podido acabar lo del DFS y demás.

30-05: Hoy hemos seguido teniendo problemas de red, pero ya no ha pasado tan regularmente lo de la MAC del equipo sysadmin. Hemos podido solucionar otro problema de red entre el NAS y el servidor de Datos en la red interna (SAN) y no funcionaba el iSCSI, yo he ayudado en reparar ese problema. También hemos conectado el punto de acceso, yo he ayudado en indicar donde ponerlo. He puesto de forma provisional (y quizás definitiva, al menos en este curso) el DNS del centro además del de ADDC para los clientes que van por DHCP.  También he unido a zabbix el switch cisco. El dia anterior por la tarde preparé una serie de comandos para poder avanzar en resoluciones de problemas como por ejemplo el que se nos apagaba los servidores w22, SID, etc. Y hoy los hemos podido utilizar. También he crimpado un cable para un servidor del SAN ya que no funcionaba correctamente el anterior.

Uno de los problemas que he tenido es que el agente zabbix de los servidores no funciona como esperábamos así que hay que ejecutarlo de otra forma. No hemos podido acabar de conectar el SAI a la red.

29-05: Hoy he estado intentando solucionar los problemas de red que han aparecido, por lo visto el problema de red no lo resolví por completo el otro día.
Hoy he descubierto algo importante, que es posible que sea el origen de todo este dolor de cabeza. Este problema es que en la tabla ARP del cliente windows la fila que relaciona la ip de la puerta de enlace y la mac desaparece y en algunos momentos dura poco más de 5 minutos y en otros dura segundos. Ahora toca saber porque pasa esto.
Además de esto, he ejecutado (mediante un servidor local HTTP) el cliente zabbix (msi) en alguno de los servidores windows core.

26-05: Antes de ir a clase, he estado realiznado la tarea 3.1, ya que todavía no teníamos nada avanzado de esta. He arreglado todos los problemas de red que aparentemente eran los causantes de errores de conexión del sysadmin: volver a crimpar una roseta que usamos al principio como extensor, porque el pin 5 fallaba (pero cuando lo montamos, funcionaba perfectamente), también he ido comprobando los latiguillos implicados por si acaso.
También he solucionado un problema del servidor de monitorización.
También he añadido al servidor zabbix el switch tplink y el router mikrotik (a falta del de cisco y los servidores, pero estos se está ocupando Víctor)
También he añadido en el DNS del dominio principal un host para el zabbix
también he ayudado a enviar el .exe del agente de zabbix al servidor datos, pero nos hemos quedado por ahí.

25-05: Hoy he conseguido solucionar uno de los problemas que hacía no funcionar correctamente al bounding. Este problema es que había un latiguillo que no hacía pasar nada de electricidad, así que lo he sustituido y el bounding ha empezado a funcionar. Después hemos descubierto que depende de como se coloque el cable del sysadmin (del puerto patch panel) al switch funciona o no la conexión, por lo visto el crimpado del patchpanel esta estropeado, pero eso el dia siguiente tendré que ocuparme de solucionarlo.

24-05: Hoy no hemos tenido mucho tiempo (~1h) para estar en el taller, en este tiempo he estado intentando solucionar el mismo problema en la red que el de dias anteriores. En este caso, he actualizado el firmware del dispositivo mikrotik y ahora queda hacer pruebas para ver si funciona, ya que por lo visto, es un bug. Mañana en el taller veremos si ha funcionado. De todas formas, ahora el mikrotik ha dejado de enviar peticiones con la ip 129.0.0.VLAN así que un problema ha sido solucionado.

23-05: Hoy he conseguido solucionar el primer problema de red, el cual intenté solucionar ayer. El problema estaba que hace un tiempo añadí 2 puertos más a la vlan de servidores en modo untagged, pero en la configuración de puertos de red se me olvidó añadirle a los 2 nuevos puertos la vlan 10, por eso tenían la de por defecto (1) y no funcionaban los pings en la red. después de solucionar este error, he probado el truenas y funcionaba. Tambien he añadido a putty algunas conexiones a los diferentes máquinas virtuales Linux. Luego de esto he estado el resto del tiempo intentar ver porque la red no funciona correctamente ya que parece ser que hay un bucle por ahí o algo que impide que la red no funcione correctamente, he revisado los logs, usando el  el sniffer de pauqetes,... pero no he solucionado el problema

22-05: Hoy hemos estado 2 horas en el taller, y en estas 2 horas lo único que he hecho ha sido intentar solucionar un problema de red en los servidores del DELL 3. Después de buscar mucho, he encontrado un problema con la interfaz de red externa, ya que cuando se le asigna a la maquina virtual no funciona pero si se le asigna la de la placa base puede hacer ping a todos los equipos de la red. Una cosa que tengo que solucionar el siguiente dia es eso ya que no acabé.

dia 19-05: Hoy antes de ir al taller he aprovechado 2 horas para ir realizando el script de powershell. He conseguido acabar de configurar el SSH del switch de cisco (el problema estaba en que le faltaba poner tagged en la vlan 20 del puerto (del tplink) donde se conecta el cisco, para que el usuario admin pueda conectarse y habilitar la vlan 20 en el trunk del cisco. También hemos acabado de hacer funcionar zabbix (únicamente acabé de hacer el manual anoche, y hoy lo hemos implementado, todo ha funcionado como se esperaba). Al final me he quedado intentando establecer una conexińo entre el mikrotik y el servidor TrueNAS. Hemos también solucionado un problema en la red en el ordenador del syssadmin. También he ayudado en solucionar el error del sid del windows server. Cambiar 2 puertos de vlan 

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
