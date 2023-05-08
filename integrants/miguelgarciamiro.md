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
