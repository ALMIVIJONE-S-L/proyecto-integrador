# Bitácora Jose Ivan Olcina

## 08-06-2023

En el dia de hoy, he terminado de implementar la directiva de Firefox, y he seguido investigando el tema de las cutoas, al final decidí hacerlo mediante comandos, pero aún así aún no he logrado que funcione, tendré que investigar más, en clase de Jorge, documenté el tema de la directivas, y revise la página de visualización de tareas para hacerla algun pequeño ajuste.

## 07-06-2023

Miguel perfeccionó la configuración de el DFS, ya que no estaba mal, pero podía estar mejor, por mi parte, me puse con el tema de implementar directivas, despues de algunos problemas implementado algunas de ellas, logré implementarlas todas menos la del Firefox, posterioemente me puse a investigar sobre el tema de las cutoas en las carpetas personales, y me tope otra vez con el problema de que no se instalan las herramientas de administración y, por lo tanto, no se podía gestioanr gráficamente desde RSAT.

## 06-06-2023

Hoy no he podido aportar nada al grupo, ya que las horas de el martes la he invertido realizando un examen de recuperación de Pep.

## 05-06-2023

Hoy, hemos logrado hacer fucionar el DFS, no sin antes relizar un larga busuqeda sobre como lograrlo, al fnial, xon la ayuda de Juan, que tambien se puso a buscar información, hemos logrado configurarlo mediante comandos, pero no ha supuesto una importante inversión de tiempo.

## 02-06-2023

Hoy, hemos continuado intentando solucionar el problema de conectividad de el servidor de datos con el WAC, al final Miguel ha hllado la causa del problema, parece que todo radicava en el firewall, una vez solucionado ese problema, el servidor ya se podía volver a gestionar remotamente, por otra parte, una vez terminado eso, me he puesto a conectar el volumen iSCSI de datos al servidor de datos, dándole su respectivo formato y creando las carpetas correspondientes dentro del mismo, para hacerlo, he tenido que recurrir a realizarlo mediante comandos, ya que la herremienta gráfica no funcinaba, ya que, por algun razón, al instalar el rol correspondiente en el servidor, las herramientas de administración no se instalaban. Finalmente hemos intentado instalar y configurar el DFS, pero, al igual que ocurrio con el iSCSI, no disponemos de herrmienta gráfica para administrarlo y configurarlo, ya que no se instalado junto con el rol.

## 01-06-2023

El dia de hoy, hemos intetnado seguir solucionando el problema de conexion con el WAC, aunque no hemos hemos logrado solucionarlo, luego, en clase de Jorge, no ha presetnado o explicado su parte del proyecto, que consiste en crear una serie de pagina web que conformaran la intranet de la sede, hemos emezado a hacer dichas páginas.

## 31-05-2023

Hoy a sido un dia infructífero y desesparante, ya que tanto el servidor de datos como la cabina de discos (TrueNAS) no funcionaban, al final de el dia, hemos averguado que el problema en el TryeNAS era que los srcipts implmentados por Miguel para renombrar la interfaces de red daban ciertos problemas, que se puderion solventar, en cuanto a el servidor de datos, da algun problema con el puerto 5996 para conectarse a traves de https por el WAC, pero ya no nos ha dado tiempo a terminar de solucionarlo.

## 30-05-2023

El dia de hoy, he logrado congiurar y compartir correctmanete el volumen iSCSI de datos (quedaria crear la pool de backups) no sin tener difcultades para ellos ya que la conectivdad en la red interna por la que compartimos el recurso iSCSI (192.168.0.0/24) no funcionaba correctamente, lo que me ha supuesto bastante tiempo invertido, en los próximos dias (esta semana) el objetivo, si todo va bien, es crear las carptas necesarias (asignarles permisos y compartirlas) en el servidor de datos (reusrso iSCSI datos) y el pool de backups.

## 26-05-2023

Seguimos teniendo problemas con la conetividad de la red, aunque esta vez hemos averiguado que peude deberse a problemas con la tabla arp; por otra parte, con la ayuda de alberto, emepzamos a configurar el servidor de datos que estará conectado con la cabina de discos, pero me he podido avanzar casi nada debido a los problemas de red, ya que me era imposible conectarme remotamente al servidor mediante WAC, y hacerlo directamente desde el servidor no era lo más ótimpo (Juan no ha reñido varias veces por eso).

## 25-05-2023

Seguimos teniendo problemas de red, principalmente en le PC-5 (sysAdmin), por mi parte, uni o le asigne un nombre de dominio al Truenas, aplicamos algunas configuraciones iniciales junto con Alberto (servidornas.barcelona.lan) además de crear la pool de datos en el mismo.

## 24-05-2023

Limitados por los problemas de red, estuve mirando y recopilando información acerca de TrueNAS y su funcionamiento (Vinedo apuntes y a través de búsuqedas de internet).

## 23-05-2023

Hoy, solo he estado 1 hora, ya que me he tenido que ir al médico, pero el tiempo que he tenido, lo he aprovechado para unir los cliente que quedavan al dominio y comprobar que si habian unido correctamente y todo iba sin problemas mayores.

## 22-05-2023

Hoy, me he dedicado a terimnar de configurar el WAC desde el que ya podemos gestionar remotamente los servidores Empresariales (AD), luego, he empezado a unidor ciertos clietnes al dominio, y en los PC-3 y PC-4, Alberto y yo hemos procedido a instalar VirtualBox, ya que en esos PC, tenemos virtualizados dos departamentos en cada uno, posteriomente, he creado las máquina virtuales (Dept. Técino y Dept. Laboratorio) y las he dejado insatlandose.

## 19-05-2023

Hoy ha sido un día un poco frustrante, pero antes que nada, comentar que el tema de el servidor Empresarial Secundario, Miguel propuso un solución alternativa que funcionó sin necesidad de reinstalar el SO, pero tocó volver a configurar su nombre y la red el el mismo, todo ello, dinalmente, con la ayuda de Alberto, conseguí unir el servidor Empresarial Secundario al dominio cono controlador de el mismo, de forma que si el servidor Empresarial Principal cae, el secundario asumiría el rol de gestionar el Dominio y el AD, por otro lado, hemos tenido un problema bastante frustrante con el PC-5 (sysadmin) ya que sin razón aparente, no le funcoinaba la conexión de red, al final el problema estaba en que el *patch cord* que iba desde el *patch panel* al switch TP-LINK esta roto o defectuoso, ya que parecía que alguien lo había pisado o algo, y el conetor RJ-45 tenía los pines dañados, hemos substituido el cable y el probelma se ha subsanado.

## 18-05-2023

Hoy me he dedicado a hacer fucnoinar las herrmientas RSAT y WAC para gestionar el servidor empresarias desde el ordenadors sysadmin, han habido algunas complicaciones (por ejemplo a la hora de comunicarse no detectaba el DNS), pero no ha pasado a mayores. Por otro lado, luego me he puesto junto con Alberto a configurar correctametne el servidor Empresarial Secundario, pero no hemos logrado hacerlo funcionar, ya que al ser un SO cloando, detectaba que tenía un SID duplicado igual al de el servidor Empresarial Principal, no hemos podido terminar de solucionarlo, pero la intención de mañana es volver a instlarlo desde 0.

## 17-05-2023

Hoy por fin hemos logrado el *propósito del dia 16* (Comunicar vlan de switch cisco con MikroTik a través de el switch Cico), el probelma erradicava en la configuración de el switch **TP-LINK**, que no dejaba pasar el tráfico de las VLANs provenientes de el swtich **Cisco**.

## 16-05-2023

El objetivo de hoy era logar hacer que las VLAN de el switch Cisco, leggaran al MikroTik a través de el switch TP-LINK, pero por desgracia no hemos logrado avergiurar nada.

## 15-05-2023

En el día de hoy, hemos estado Miguel y yo tratnado de averguiar los que nos dejamos a medias el viernes (Tema MiktoTik) y hemos conseguido que nos funcionen bien las VLANs, cambiando y añadiendo ciertos parámetros que estaban por configurar en el switch TP-Link y en el MikroTik, con ello, de momento, hemos logrado hacer funcionar dos VLANs (20-SysAdmin y 40-AccesPoint), queda pendiente por terminar las demás VLAN, posteriormente Miguel ya se centró en el switch Cisco en los últimos compases de clase.

## 12-05-2023

He continuado con la implemetnación de las VLAN, corrigigendo algun pequeño fallo y optimizando las mismas; posteriormente, junto con Miguel, hemos estado tratnado de averiguar (sion e´xito) como gestionar las VLAN y las interfaces virtuales desde el dispositivo MikroTik.

## 10-05-2023 & 11-05-2023

En estos dos días, he implementado las distintas VLANs ubicadas en nuestra red, empezando por el switch de **TP-Link** y continuando con el de **Cisco**.

## 09-05-2023

He buscado mas información y algún tutorial en internet referente e la implemetnación de las distintas VLANs, por otra parte, entre todos hemos optimizado el *Trello* con las recomendaciones que nos ha dado Juan.

## 08-05-2023

En este día, he seguido buscando información referente a los switches, ampliando la búsqueda por internet, también juntos con los otros miembros.

## 04-05-2023 & 05-05-2023

Estos dos dias, junto con Alberto, hemos terminado de crimpar todos los correspondientes cables en el patch panel y hemos comprobado su correcto funcionamineto, posteriormente he emepzado por mi cuenta a ller cierta infroamción referente a el funcionamiento de los *switches* **TP-LINK** y **CISCO**.

## 03-05-2023

He realizado un pequeño esquema o resumen detallando todas las interfaces o adaptadores de red de los distintos servidores y clientes para, posteriormente, planficar la distribución de los mismos en el *patch panel*, posteriormente con Alberto, hemos empezado (aún por terminar) a crimpar los distintos cables que salen de las respectivas tarjetas de red de los PCs clientes y los servidores a su correpondiente toma en el *patch panel*, habiendo etiquetado previamente cada adaptador del mismo indicando a que departamento o servidor pertenece.

## 28-04-2023

Hoy tocaba clase con Juan, en la cual hemos ido al taller; yo me he encargado, junto con alberto de orgnizar la práctica de "Dimensionamineto deServidores" organizando los distintos servidores virtuales definiendo en que cual de los 3 servidores físicos se van a instalar, asignandoles los recursos necesarios en cuanto a núcleos de CPU y RAM (el almacenamiento los definiremos más adelante), el SO que tendran los servidores y sus adaptadores de red.

## 27-04-2023

Este dia, estuvimos en clase viendo iniciando y planificando la estructura física de la res, estuvimos viendo, en base a los materiales y equipo de el que disponíamos, como distribuirimaos los distintos swtich y la organización de las dtintas plantas, edificios, departamentos (aun no hay nada definitivo) para emezar a tener una ligera idea de como orgnizar la red en el taller.

## 20-04-2023

En este dia, he estado con Miguel observando y configurando el dispositivo MikroTik, de forma que hemos conseguido configurar un sourceNAT y un DHCP, de este modo, ya podremos salir al exterior con los disintos clientes o servidores conectados al mismo para relizar futuras configuraciones necesarias para la implentacion del proyecto y para el esquema de red definitivo, también hemos creado un DHCP provisional para no conectar los clientes o dispositivos manualmente.

Posteriormente, hemos resetado la configuración incial de el router CISCO, eliminando las VLAN previamente creadas por los alumnos del curso anterior.

## 18-04-2023

El día de hoy he procedido a captar información y empezar a planificar la distribución de los servidores virtuales el los 3 servidores físicos de los que disponemos, pensando que servidores vamos a utilizar y que recursos se le asignarán a los mismos.

No se ha hecho nada definitivo pero si ha hecho un pequeña planificacion sobre los próximos pasos a seguir en este aspecto junto con Alberto y Víctor, que junto con ellos dos, eŕamos los que estabamos en el aula ese dia.

Por últimos, se ha procedido a hecharle un vistazo al hardware de los servidores para saber de los recursos que disponemos y empezar a planificar la asginación y distrbución de los mismos.
