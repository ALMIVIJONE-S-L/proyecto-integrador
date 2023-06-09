# INFORMACIÓN DE GRUPO

**GRUPO**: ALMIVIJONE S.L.

**INTEGRANTES**:
  - [ALBERTO CALATAYUD CASTAÑER](../integrants/AlbertoCalatayud.md)
  - [MIGUEL GARCÍA MIRÓ](../integrants/miguelgarciamiro.md)
  - [JOSE IVAN OLCINA](../integrants/JoseIvanOlcina.md)
  - [VICTOR FUSTER RICO](../integrants/VictorFuster.md)

--- 

# DIA 09 [09-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en solucionar problemas de configuración en Zabbix, agregar los servidores a la herramienta, establecer el servicio WSUS en el servidor principal y avanzar en la implementación de cuotas de espacio. También hemos trabajado en la configuración de la extranet, la recopilación de información sobre WDS y la documentación de redes.

**QUE HEMOS PODIDO HACER:**

- Hemos solucionado el problema de agregar el switch Cisco en Zabbix, identificando que el inconveniente provenía del switch TP-LINK y permitiendo el tráfico tagged para la comunicación entre ambos.

- Hemos añadido todos los servidores, incluyendo la intranet, a Zabbix y hemos configurado las reglas de firewall necesarias para el monitoreo adecuado.

- Hemos establecido el servicio WSUS en el servidor principal, aunque aún falta agregar los clientes al servicio para completar su implementación.

- Hemos configurado una línea para acceder directamente al servidor de monitorización a través del DNS del servidor Apache, facilitando el acceso y la gestión del mismo.

- Hemos completado la implementación de las cuotas de espacio en las carpetas correspondientes y hemos documentado el proceso para su referencia futura.

- Hemos creado una directiva para desplegar las carpetas de red de los usuarios, asegurándonos de que se creen y asignen adecuadamente en los equipos correspondientes.

- Hemos iniciado la recopilación de información sobre WDS (Windows Deployment Services), con el objetivo de implementarlo utilizando comandos en el futuro. Esta información será útil para el proceso de despliegue de sistemas operativos.

- En la hora de taller, hemos finalizado la configuración de la extranet, asegurándonos de que esté lista para su uso y cumpliendo con los requisitos establecidos. También hemos dedicado tiempo a la documentación de redes, preparando la entrega de documentación requerida.

**QUE NO HEMOS PODIDO HACER:**

- No se mencionaron tareas que no se hayan podido completar.

**SIGUIENTES PASOS:**

- Configurar correctamente el tráfico tagged entre el switch Cisco y el switch TP-LINK para permitir una comunicación estable y sin problemas.

- Agregar los clientes al servicio WSUS y asegurarse de que estén correctamente configurados para recibir las actualizaciones correspondientes.

- Realizar pruebas exhaustivas en Zabbix para asegurarse de que todos los servidores estén siendo monitoreados adecuadamente y tomar las acciones necesarias en caso de detectar problemas.

- Continuar investigando y buscando alternativas para mejorar la gestión de cuotas de espacio en las carpetas, considerando las limitaciones de las herramientas de administración disponibles.

- Avanzar en la implementación de WDS utilizando la información recopilada, asegurándose de seguir las mejores prácticas y configuraciones adecuadas.

- Continuar trabajando en la documentación de redes, asegurándose de incluir todos los detalles relevantes y cumplir con los requisitos establecidos para la entrega de documentación.

--- 

# DIA 08 [08-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en terminar la implementación del agente Zabbix en todos los servidores, completar la documentación correspondiente y resolver problemas recurrentes con las carpetas compartidas utilizando DFS. También hemos avanzado en el desarrollo de la página web, implementado la directiva de Firefox y trabajado en la investigación de las cuotas en las carpetas.

**QUE HEMOS PODIDO HACER:**

- Hemos finalizado la implementación del agente Zabbix en todos los servidores, a excepción de la configuración de una regla en el Mikrotik para permitir el tráfico en el puerto 10050.

- Hemos completado la documentación de la parte del agente Zabbix en los servidores Linux y Windows, asegurándonos de tener toda la información necesaria documentada.

- Hemos enfrentado problemas recurrentes con las carpetas compartidas utilizando DFS, los cuales hemos logrado resolver reiniciando las máquinas correspondientes.

- Hemos continuado trabajando en la página web y nos acercamos a su finalización, implementando los cambios necesarios para mejorar su funcionamiento y apariencia.

- Hemos terminado de implementar la directiva de Firefox, asegurándonos de que esté correctamente configurada y aplicada en los equipos correspondientes.

- Hemos seguido investigando sobre las cuotas en las carpetas, pero aún no hemos logrado hacer que funcionen correctamente debido a limitaciones en las herramientas de administración disponibles.

- Hemos revisado la intranet y la hemos preparado para su inclusión en el trabajo conjunto, asegurándonos de que esté lista para su implementación.

- Hemos comenzado la documentación del progreso realizado en el taller, asegurándonos de registrar todos los avances y detalles relevantes. También hemos trabajado en la página de bienvenida para la página web.

**QUE NO HEMOS PODIDO HACER:**

- No se mencionaron tareas que no se hayan podido completar.

**SIGUIENTES PASOS:**

- Configurar la regla en el Mikrotik para permitir el tráfico en el puerto 10050 y asegurarse de que el agente Zabbix esté funcionando correctamente en todos los servidores.

- Realizar pruebas exhaustivas del DFS y seguir monitoreando las carpetas compartidas para evitar problemas recurrentes.

- Finalizar la página web y asegurarse de que esté lista para su despliegue y uso por parte de los usuarios.

- Continuar investigando y buscando alternativas para la gestión de cuotas en las carpetas, considerando las limitaciones de las herramientas de administración disponibles.

- Mantener actualizada la documentación del progreso realizado en el taller, registrando todos los avances y detalles importantes.

- Realizar ajustes necesarios en la intranet y asegurarse de que esté lista para su implementación y uso por parte de los empleados.




--- 

# DIA 07 [07-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en realizar modificaciones al DFS, instalar el agente de Zabbix en los servidores Windows, implementar directivas, investigar sobre las cuotas en las carpetas personales y realizar algunos ajustes en la intranet.

**QUE HEMOS PODIDO HACER:**

- Hemos realizado una pequeña modificación al DFS con el objetivo de evitar problemas y asegurar su correcto funcionamiento.

- Hemos instalado el agente de Zabbix en la mayoría de los servidores Windows y los hemos añadido al sistema de monitoreo.

- Hemos descubierto que la IP de administración del switch Cisco no está funcionando correctamente y se requerirá resolver este problema en el próximo día de trabajo.

- Hemos comenzado a implementar directivas, logrando implementar todas excepto la directiva del navegador Firefox.

- Hemos investigado sobre el tema de las cuotas en las carpetas personales, pero nos hemos encontrado nuevamente con el problema de la falta de herramientas de administración que impiden la gestión gráfica.

- Hemos trabajado en la documentación del punto WiFi y de WinPower, completándolas con la información necesaria.

- Hemos realizado algunos ajustes en la intranet para mejorar su funcionamiento y apariencia.

**QUE NO HEMOS PODIDO HACER:**

- No se mencionaron tareas que no se hayan podido completar.

**SIGUIENTES PASOS:**

- Resolver el problema de la IP de administración del switch Cisco para asegurar su correcto funcionamiento.

- Finalizar la implementación de la directiva del navegador Firefox y asegurarse de que esté correctamente configurada.

- Realizar pruebas exhaustivas del DFS para garantizar su correcto funcionamiento y distribución de archivos.

- Monitorear los servidores Windows a través de Zabbix y verificar que se estén recibiendo los datos correctamente.

- Investigar alternativas y posibles soluciones para la gestión de cuotas en las carpetas personales, considerando la falta de herramientas de administración gráfica.

- Continuar trabajando en la documentación y ajustes necesarios en la intranet para su mejora continua.



--- 

# DIA 06 [06-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en desplegar el script de usuarios, configurar el DFS y completar la configuración de Remote Desktop (RemoteAPP).

**QUE HEMOS PODIDO HACER:**

- Hemos desplegado con éxito el script de usuarios, creando todos los usuarios, perfiles móviles, perfiles obligatorios y carpetas personales.

- Hemos configurado la parte de Namespace del DFS y hemos colocado el script y el archivo CSV con los usuarios en los directorios compartidos correspondientes.

- Hemos descargado los dos programas necesarios para RemoteAPP y hemos completado la configuración de Remote Desktop (RemoteAPP).

- Hemos aplicado la mayoría de los permisos necesarios en los directorios, excepto en el directorio compartido "AdminDominio".

**QUE NO HEMOS PODIDO HACER:**

- No se mencionaron tareas que no se hayan podido completar.

**SIGUIENTES PASOS:**

- Completar la aplicación de permisos en el directorio compartido "AdminDominio".

- Realizar pruebas exhaustivas del script de usuarios para asegurar que todos los usuarios y carpetas se hayan creado correctamente.

- Realizar pruebas de acceso y funcionamiento del DFS para garantizar una correcta distribución de archivos y acceso a los recursos compartidos.

- Realizar pruebas y verificación del funcionamiento de Remote Desktop (RemoteAPP) para asegurar su correcto despliegue y acceso remoto a las aplicaciones.


--- 

# DIA 05 [05-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en solucionar los problemas del DFS, resolver los problemas de Remote Desktop y completar la configuración del DMZ.

**QUE HEMOS PODIDO HACER:**

- Hemos logrado solucionar los problemas del DFS configurándolo mediante PowerShell. Esto requirió una búsqueda exhaustiva de información y la ayuda de Juan.

- Hemos solucionado los problemas de Remote Desktop (RemoteAPP) al reinstalar el servidor en modo GUI, ya que estaba en modo core.

- Hemos creado completamente el DMZ y preparado los permisos para los directorios a compartir.

**QUE NO HEMOS PODIDO HACER:**

- Ninguna tarea se nos pudo resistir hoy 💪.

**SIGUIENTES PASOS:**

- Continuar trabajando en la configuración y optimización del DFS, asegurando que funcione de manera estable y confiable.

- Realizar pruebas exhaustivas del Remote Desktop para garantizar su correcto funcionamiento.

- Verificar y ajustar los permisos en los directorios del DMZ para garantizar una adecuada seguridad y acceso controlado.


--- 

# DIA 02 [02-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en continuar el desarrollo de la intranet de la empresa, solucionar problemas de conexión iSCSI entre el Servidor de Datos y el Servidor NAS, y trabajar en la instalación y configuración del DFS.

**QUE HEMOS PODIDO HACER:**

- Hemos continuado trabajando en la creación de la pantalla de inicio de sesión de la intranet.

- Hemos solucionado el problema de conexión iSCSI entre el Servidor de Datos y el Servidor NAS al permitir la conexión correcta a través del servicio WinRM en el firewall del servidor de Windows.

- Hemos encontrado la causa del problema de conectividad entre el Servidor de Datos y el WAC, que resultó ser el firewall, y lo hemos solucionado para poder gestionar el servidor de forma remota.

- Hemos logrado conectar el volumen iSCSI de datos al Servidor de Datos, darle formato y crear las carpetas correspondientes utilizando comandos, ya que la herramienta gráfica no funcionaba adecuadamente.

**QUE NO HEMOS PODIDO HACER:**

- No hemos logrado instalar la herramienta DFS en el cliente sysadmin.

- No hemos obtenido la herramienta gráfica de administración del DFS durante la instalación del rol correspondiente en el servidor.

**SIGUIENTES PASOS:**

- Continuar el desarrollo de la intranet de la empresa, enfocándonos en la implementación de las funcionalidades y páginas restantes.

- Investigar alternativas para instalar la herramienta DFS en el cliente sysadmin y obtener la herramienta gráfica de administración correspondiente.

- Realizar pruebas y ajustes finales en la configuración del volumen iSCSI de datos.

--- 

# DIA 01 [01-06-23]

**OBJETIVO DEL DIA:**

- Durante este día nos hemos enfocado en solucionar el problema de conexión entre el WAC y el Servidor de datos, finalizar el script de usuarios de PowerShell, y avanzar en el desarrollo de la intranet de la empresa.

**QUE HEMOS PODIDO HACER:**

- Hemos intentado solucionar el problema de conexión entre el WAC y el Servidor de datos, pero hasta el momento no se ha encontrado una solución.

- Hemos finalizado el desarrollo del script de usuarios de PowerShell. Este script se encarga de crear usuarios, perfiles móviles, perfiles obligatorios, carpetas personales, grupos y unidades organizativas.

- Hemos comenzado a trabajar en la intranet de la empresa, específicamente en la pantalla de inicio de sesión.

- En la clase de Jorge, se ha presentado y explicado su parte del proyecto, que consiste en crear una serie de páginas web para formar la intranet de la sede.

**QUE NO HEMOS PODIDO HACER:**

- Aún no hemos logrado solucionar el problema de conexión entre el WAC y el Servidor de datos.

- No hemos podido avanzar más en el desarrollo de la intranet de la empresa.

**SIGUIENTES PASOS:**

- Continuar trabajando en la búsqueda de una solución para el problema de conexión entre el WAC y el Servidor de datos.

- Realizar pruebas y ajustes finales en el script de usuarios de PowerShell.

- Continuar el desarrollo de la intranet de la empresa, enfocándonos en completar la pantalla de inicio de sesión y avanzar en la creación de las demás páginas web.

