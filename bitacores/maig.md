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



--- 



--- 

09-06: Hoy he podido solucionar el problema que teníamos de ñaadir el switch cisco en zabbix, el problema no era de cisco, era del switch de TP-LINK, que como se tuvo que reiniciar (porque alguiend decidió hacer un bucle en la red) perdimos algo de progreso, ese progreso era permitir el tráfico tagged por el bounding entre el cisco y TP-LINK para que se pueda contactar con el switch cisco por la vlan de administración. También he acabado de añadir todos los servidores a zabbix, incluida la intranet, para esto he tenido que añadir 2 reglas en el firewall. También he conseguido establecer el servicio WSUS en el servidor principal, pero a falta de añadir los clientes al servicio WSUS. También he añadido una línea para acceder directamente cuando se ponga el dns del servidor apache del servidor de monitorización



--- 

08-06: Hoy he acabado de implementar el agente zabbix en todos los servidores, a falta de terminar de poner una regla en el mikrotik para poder dejar pasar tráfico con el puerto 10050 que es el del agente de zabbix. También he terminado de documentar la parte del agente de zabbix en los servidores linux y windows. Hemos tenido algunos problemas con las carpetas compartidas utilizando DFS, porque como el sistema que tenemos implementado no está preparado para el uso que le estamos dando (el tema de usar virtualbox, etc), esto provoca problemas de red recurrentes, pero nada que un,dos o incluso 3 reinicios de la máquina no pueda arreglar (en la mayoría de los casos.) 

En la hora de lenguaje de marcas hemos seguido con la página web, ya la tenemos a casi acabar.

En el dia de hoy, he terminado de implementar la directiva de Firefox, y he seguido investigando el tema de las cutoas, al final decidí hacerlo mediante comandos, pero aún así aún no he logrado que funcione, tendré que investigar más, en clase de Jorge, documenté el tema de la directivas, y revise la página de visualización de tareas para hacerla algun pequeño ajuste.

--- 

07-06: Hoy he tenido que hacer una pequeña modificación al DFS, para evitar problemas. He instalado el agente de zabbix en la mayoría de los servidores windows (además de añadirlos a zabbix), me faltó hacerlo en los servidores linux y en el datos (windows). He descubierto que la IP de administración del switch cisco no está funcionando como debería ya que el SSH no funciona y tampoco la conexión con SNMP, no me ha dado tiempo a acabarlo hoy.

Miguel perfeccionó la configuración de el DFS, ya que no estaba mal, pero podía estar mejor, por mi parte, me puse con el tema de implementar directivas, despues de algunos problemas implementado algunas de ellas, logré implementarlas todas menos la del Firefox, posterioemente me puse a investigar sobre el tema de las cutoas en las carpetas personales, y me tope otra vez con el problema de que no se instalan las herramientas de administración y, por lo tanto, no se podía gestioanr gráficamente desde RSAT.


--- 

06-06: Hoy he desplegado (al fin) el script de usuarios, todo ha funcionado como lo previsto, ha funcionado a la primera, creando todos los usuarios, perfiles móviles, obligatorios y carpetas personales. También, antes de ejectuar el script, he terminado de configurar el DFS, la parte de **Namespace**.  En los directorios compartidos, he tambien puesto el script y el csv con los usuarios. He descargado los 2 programas necesarios para RemoteAPPTambién he acabado de configurar lo de RemoteDesktop (RemoteAPP) y ademas hasta lo hemos corregido ya. También he aplicado la mayoría de permisos necesarios en los directorios.

Me ha quedado por acabar los permisos del directorio compartido AdminDominio

Hoy no he podido aportar nada al grupo, ya que las horas de el martes la he invertido realizando un examen de recuperación de Pep.


--- 

05-06: Hoy hemos solucionado los problemas del DFS, configurandolo meidante powershell, también he solucionado los problemas de RemoteDesktop (RemoteAPP), el problema era que el servidor estaba en modo core, así que lo tuve que reinstalar en modo GUI. Tambien estuve creando el DMZ, el cual se quedó totalmente acabado (ya que el día anterior, por la tarde estuve pensando como hacerlo, esa tarde también estuve preparando los permisos para los directorios a compartir.

Hoy, hemos logrado hacer fucionar el DFS, no sin antes relizar un larga busuqeda sobre como lograrlo, al fnial, xon la ayuda de Juan, que tambien se puso a buscar información, hemos logrado configurarlo mediante comandos, pero no ha supuesto una importante inversión de tiempo.


--- 

02-06: Hoy antes ir a clase he seguido haciendo el login de la intranet. También he hecho funcionar la conexión iSCSI entre Srv-Datos y Srv-NAS, el problema estaba en el firewall del servidor de windows, que no estaba permitiendo la conexión correcta con el servicio WinRM (usando wac _windows admin center_). Después hemos intentado hacer el DFS, pero no hemos podido acabarlo, porque la herramienta de administración del DFS no se ha acabado de instalar en el cliente sysadmin.

Nos ha faltado instalar la herramienta DFS en el cliente sysadmin.

Hoy, hemos continuado intentando solucionar el problema de conectividad de el servidor de datos con el WAC, al final Miguel ha hllado la causa del problema, parece que todo radicava en el firewall, una vez solucionado ese problema, el servidor ya se podía volver a gestionar remotamente, por otra parte, una vez terminado eso, me he puesto a conectar el volumen iSCSI de datos al servidor de datos, dándole su respectivo formato y creando las carpetas correspondientes dentro del mismo, para hacerlo, he tenido que recurrir a realizarlo mediante comandos, ya que la herremienta gráfica no funcinaba, ya que, por algun razón, al instalar el rol correspondiente en el servidor, las herramientas de administración no se instalaban. Finalmente hemos intentado instalar y configurar el DFS, pero, al igual que ocurrio con el iSCSI, no disponemos de herrmienta gráfica para administrarlo y configurarlo, ya que no se instalado junto con el rol.


--- 

01-06: Hoy hemos intentado solucionar un problema entra la conexión del WAC y el Servidor de datos, pero no se ha podido. La tarde de este día he acabado el script de usuarios de powershell el cual crea usuarios, perfiles móviles, obligatorios y las carpetas personales además de los grupos y unidades organizativas. Hemos empezado con el tema de la intranet de la empresa, yo he empezado con la pantalla de login.
El dia de hoy, hemos intetnado seguir solucionando el problema de conexion con el WAC, aunque no hemos hemos logrado solucionarlo, luego, en clase de Jorge, no ha presetnado o explicado su parte del proyecto, que consiste en crear una serie de pagina web que conformaran la intranet de la sede, hemos emezado a hacer dichas páginas.

--- 

31-05: Hoy antes de ir al taller he avanzado el script de powershell. Hemos solucionado un problema (de forma temporal) del servidor NAS, indicandole la misma interfaz que el servidor de datos (que tiene w22), así que salen con la misma MAC, esta forma funciona, pero lo ideal sería usar la interfaz de red dedicada, pero hasta que no se solucione el error no se podrá. No hemos podido acabar lo del DFS y demás.

Hoy a sido un dia infructífero y desesparante, ya que tanto el servidor de datos como la cabina de discos (TrueNAS) no funcionaban, al final de el dia, hemos averguado que el problema en el TryeNAS era que los srcipts implmentados por Miguel para renombrar la interfaces de red daban ciertos problemas, que se puderion solventar, en cuanto a el servidor de datos, da algun problema con el puerto 5996 para conectarse a traves de https por el WAC, pero ya no nos ha dado tiempo a terminar de solucionarlo.

--- 

30-05: Hoy hemos seguido teniendo problemas de red, pero ya no ha pasado tan regularmente lo de la MAC del equipo sysadmin. Hemos podido solucionar otro problema de red entre el NAS y el servidor de Datos en la red interna (SAN) y no funcionaba el iSCSI, yo he ayudado en reparar ese problema. También hemos conectado el punto de acceso, yo he ayudado en indicar donde ponerlo. He puesto de forma provisional (y quizás definitiva, al menos en este curso) el DNS del centro además del de ADDC para los clientes que van por DHCP.  También he unido a zabbix el switch cisco. El dia anterior por la tarde preparé una serie de comandos para poder avanzar en resoluciones de problemas como por ejemplo el que se nos apagaba los servidores w22, SID, etc. Y hoy los hemos podido utilizar. También he crimpado un cable para un servidor del SAN ya que no funcionaba correctamente el anterior.

Uno de los problemas que he tenido es que el agente zabbix de los servidores no funciona como esperábamos así que hay que ejecutarlo de otra forma. No hemos podido acabar de conectar el SAI a la red.

El dia de hoy, he logrado congiurar y compartir correctmanete el volumen iSCSI de datos (quedaria crear la pool de backups) no sin tener difcultades para ellos ya que la conectivdad en la red interna por la que compartimos el recurso iSCSI (192.168.0.0/24) no funcionaba correctamente, lo que me ha supuesto bastante tiempo invertido, en los próximos dias (esta semana) el objetivo, si todo va bien, es crear las carptas necesarias (asignarles permisos y compartirlas) en el servidor de datos (reusrso iSCSI datos) y el pool de backups.


--- 

29-05: Hoy he estado intentando solucionar los problemas de red que han aparecido, por lo visto el problema de red no lo resolví por completo el otro día.
Hoy he descubierto algo importante, que es posible que sea el origen de todo este dolor de cabeza. Este problema es que en la tabla ARP del cliente windows la fila que relaciona la ip de la puerta de enlace y la mac desaparece y en algunos momentos dura poco más de 5 minutos y en otros dura segundos. Ahora toca saber porque pasa esto.
Además de esto, he ejecutado (mediante un servidor local HTTP) el cliente zabbix (msi) en alguno de los servidores windows core.


--- 

26-05: Antes de ir a clase, he estado realiznado la tarea 3.1, ya que todavía no teníamos nada avanzado de esta. He arreglado todos los problemas de red que aparentemente eran los causantes de errores de conexión del sysadmin: volver a crimpar una roseta que usamos al principio como extensor, porque el pin 5 fallaba (pero cuando lo montamos, funcionaba perfectamente), también he ido comprobando los latiguillos implicados por si acaso.
También he solucionado un problema del servidor de monitorización.
También he añadido al servidor zabbix el switch tplink y el router mikrotik (a falta del de cisco y los servidores, pero estos se está ocupando Víctor)
También he añadido en el DNS del dominio principal un host para el zabbix
también he ayudado a enviar el .exe del agente de zabbix al servidor datos, pero nos hemos quedado por ahí.


Seguimos teniendo problemas con la conetividad de la red, aunque esta vez hemos averiguado que peude deberse a problemas con la tabla arp; por otra parte, con la ayuda de alberto, emepzamos a configurar el servidor de datos que estará conectado con la cabina de discos, pero me he podido avanzar casi nada debido a los problemas de red, ya que me era imposible conectarme remotamente al servidor mediante WAC, y hacerlo directamente desde el servidor no era lo más ótimpo (Juan no ha reñido varias veces por eso).


--- 

25-05: Hoy he conseguido solucionar uno de los problemas que hacía no funcionar correctamente al bounding. Este problema es que había un latiguillo que no hacía pasar nada de electricidad, así que lo he sustituido y el bounding ha empezado a funcionar. Después hemos descubierto que depende de como se coloque el cable del sysadmin (del puerto patch panel) al switch funciona o no la conexión, por lo visto el crimpado del patchpanel esta estropeado, pero eso el dia siguiente tendré que ocuparme de solucionarlo.

Seguimos teniendo problemas de red, principalmente en le PC-5 (sysAdmin), por mi parte, uni o le asigne un nombre de dominio al Truenas, aplicamos algunas configuraciones iniciales junto con Alberto (servidornas.barcelona.lan) además de crear la pool de datos en el mismo.


--- 

24-05: Hoy no hemos tenido mucho tiempo (~1h) para estar en el taller, en este tiempo he estado intentando solucionar el mismo problema en la red que el de dias anteriores. En este caso, he actualizado el firmware del dispositivo mikrotik y ahora queda hacer pruebas para ver si funciona, ya que por lo visto, es un bug. Mañana en el taller veremos si ha funcionado. De todas formas, ahora el mikrotik ha dejado de enviar peticiones con la ip 129.0.0.VLAN así que un problema ha sido solucionado.

Limitados por los problemas de red, estuve mirando y recopilando información acerca de TrueNAS y su funcionamiento (Vinedo apuntes y a través de búsuqedas de internet).


--- 

23-05: Hoy he conseguido solucionar el primer problema de red, el cual intenté solucionar ayer. El problema estaba que hace un tiempo añadí 2 puertos más a la vlan de servidores en modo untagged, pero en la configuración de puertos de red se me olvidó añadirle a los 2 nuevos puertos la vlan 10, por eso tenían la de por defecto (1) y no funcionaban los pings en la red. después de solucionar este error, he probado el truenas y funcionaba. Tambien he añadido a putty algunas conexiones a los diferentes máquinas virtuales Linux. Luego de esto he estado el resto del tiempo intentar ver porque la red no funciona correctamente ya que parece ser que hay un bucle por ahí o algo que impide que la red no funcione correctamente, he revisado los logs, usando el  el sniffer de pauqetes,... pero no he solucionado el problema

el tiempo que he tenido, lo he aprovechado para unir los cliente que quedavan al dominio y comprobar que si habian unido correctamente y todo iba sin problemas mayores.


--- 

22-05: Hoy hemos estado 2 horas en el taller, y en estas 2 horas lo único que he hecho ha sido intentar solucionar un problema de red en los servidores del DELL 3. Después de buscar mucho, he encontrado un problema con la interfaz de red externa, ya que cuando se le asigna a la maquina virtual no funciona pero si se le asigna la de la placa base puede hacer ping a todos los equipos de la red. Una cosa que tengo que solucionar el siguiente dia es eso ya que no acabé.

Hoy, me he dedicado a terimnar de configurar el WAC desde el que ya podemos gestionar remotamente los servidores Empresariales (AD), luego, he empezado a unidor ciertos clietnes al dominio, y en los PC-3 y PC-4, Alberto y yo hemos procedido a instalar VirtualBox, ya que en esos PC, tenemos virtualizados dos departamentos en cada uno, posteriomente, he creado las máquina virtuales (Dept. Técino y Dept. Laboratorio) y las he dejado insatlandose.

--- 

dia 19-05: Hoy antes de ir al taller he aprovechado 2 horas para ir realizando el script de powershell. He conseguido acabar de configurar el SSH del switch de cisco (el problema estaba en que le faltaba poner tagged en la vlan 20 del puerto (del tplink) donde se conecta el cisco, para que el usuario admin pueda conectarse y habilitar la vlan 20 en el trunk del cisco. También hemos acabado de hacer funcionar zabbix (únicamente acabé de hacer el manual anoche, y hoy lo hemos implementado, todo ha funcionado como se esperaba). Al final me he quedado intentando establecer una conexińo entre el mikrotik y el servidor TrueNAS. Hemos también solucionado un problema en la red en el ordenador del syssadmin. También he ayudado en solucionar el error del sid del windows server. Cambiar 2 puertos de vlan 

Hoy ha sido un día un poco frustrante, pero antes que nada, comentar que el tema de el servidor Empresarial Secundario, Miguel propuso un solución alternativa que funcionó sin necesidad de reinstalar el SO, pero tocó volver a configurar su nombre y la red el el mismo, todo ello, dinalmente, con la ayuda de Alberto, conseguí unir el servidor Empresarial Secundario al dominio cono controlador de el mismo, de forma que si el servidor Empresarial Principal cae, el secundario asumiría el rol de gestionar el Dominio y el AD, por otro lado, hemos tenido un problema bastante frustrante con el PC-5 (sysadmin) ya que sin razón aparente, no le funcoinaba la conexión de red, al final el problema estaba en que el *patch cord* que iba desde el *patch panel* al switch TP-LINK esta roto o defectuoso, ya que parecía que alguien lo había pisado o algo, y el conetor RJ-45 tenía los pines dañados, hemos substituido el cable y el probelma se ha subsanado.

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
