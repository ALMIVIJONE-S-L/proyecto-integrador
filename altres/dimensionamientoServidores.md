# DIMENSIONAMIENTO DE LOS SERVIDORES

En este apartado realizaremos la práctica de indicar en que servidores físicos van a ir todos los servidores virtualizados.

## ÍNDICE:
- [RESUMEN DE LOS RECURSOS](#breve-resumen-de-los-recursos)
- [CONFIGURACIONES A TENER EN CUENTA](#configuraciones-a-tener-en-cuenta)
- [SERVIDORES VIRTUALES Y SERVICIOS A INSTALAR EN CADA UNO](#servidores-virtuales-y-servicios-a-instalar-en-cada-uno)
- [DISTRIBUCIÓN DE SERVIDORES VIRTUALES](#distribución-de-servidores-virtuales)
  - [DELL 1](#dell-1)
  - [DELL 2](#dell-2)
  - [DELL 3](#dell-3)

---

## BREVE RESUMEN DE LOS RECURSOS

**SERVIDORES DELL**

- **CPU**: 
  - NÚCLEOS: 6
  - HILOS: 6
  > _Cabe recalcar que virtualbox (y los programas de virtualización) cuando te permiten poner núcleos a la máquina, se refiere a las **Virtual CPUs**, las cuales son CPUs simuladas por nuestro procesador real, normalmente esta ténica se llama hyper-threading ([MÁS INFO](https://www.ibm.com/docs/en/power8?topic=processors-virtual)). Esta tecnología de virtualizar de la CPU que se habilita en la BIOS/UEFI_
- **RAM**: 16GB
- **ALMACENAMIENTO**: _Va a variar, así que no se indicará_

> _Todos tienen los mismos recursos_

---

## CONFIGURACIONES A TENER EN CUENTA

**GENERAL**:
- Todos los discos tendrán la tabla de particiones [**GPT**]
- GNU/LINUX usarán **particionamiento** [**LVM**]
- Todos los discos **con datos** estarán [**CIFRADOS**]

---

## SERVIDORES VIRTUALES Y SERVICIOS A INSTALAR EN CADA UNO

> _Mucha más información en el PDF de la actividad (FASE 3 - Práctica 3.3. - Instalación i configuración....)_

- ### SERVIDOR EMPRESARIAL | _WINDOWS SERVER 2022 GUI_
  - Active Directory y Domain Controller (ADDC)
    - Servicio de instalación **Sistemas Operativos** por RED a los clientes windows.
      - > _Las ISOs necesarias estarán en una carpeta desde la **cabina de discos** mediante **iSCSI**_
    - Servicio de un sistema centralizado de **actualizaciones automáticas** de windows, para que los clientes se lo descarguen directamente desde nuestro servidor local
    - Servicio DHCP

- ### SERVIDOR EMPRESARIAL 2 | _WINDOWS SERVER 2022 CLI_
  - ADDC
    - DHCP

- ### SERVIDOR APLICACIONES Y UTILIDADES | _WINDOWS SERVER 2022 CLI_
  > Será un windows server a parte, para poder evitar problemas de seguridad y gestión de recursos.
  - Tendrá el servicio RemoteAPP instalado. **Todos los usuarios de la empresa** tendrán acceso a Libreoffice y GIMP.

- ### SERVIDOR DE MONITORIZACIÓN | _DEBIAN 11 BULLSEYE_
  - Zabbix. Importante que tengán gestión de **LOGS** también.

- ### SERVIDOR DE DATOS | _TrueNAS_
  -  Está mucho más especializado en el tema relacionado

- ### SERVIDOR WEB INTRANET | _DEBIAN 11 BULLSEYE_
  - Apache2, el cual albergará las aplicaciones web

- ### SERVIDOR WEB EXTERNALIZADO | _GitHub Pages? para no pagar dinero ya que no es una situación real,_
  > Se podría indicar alguna de las mejores soluciones de hosting (sin hacerlo de verdad, únicamente indicando cual sería la solución real)
  > 
  > Se podría también publicarlo en en DMZ (ya dependiendo de los que se nos pida más adelante se decidirá)


> **SUGERENCIAS:**
> - Mirror debian local, para los servidores?, este servidor tendría que tener una buena configuración de seguridad para comprobar la integridad de los paquetes, etc..
> - Establecer un gestor de contraseñas, por ejemplo keepass2 (ver como se implementaría, y si sale rentable ponerlo)

---

## DISTRIBUCIÓN DE SERVIDORES VIRTUALES

<!-- 
RECORDAR INDICAR LO SIGUIENTE EN ESTE APARTADO: 
- recursos que va a consumir cada máquina virtual (cores virtuales, ram, calidad gráfica, UEFI, discos habilitados [hard disk, network, optical, etc])
- Indicar el SISTEMA OPERATIVO DEL HOST donde irá virtualbox instalado
-->

### DELL 1

> **SISTEMA OPERATIVO HOST**: Debian 11 Bullseye Con Escritorio
> 
> **MEMORIA RAM CONSUMIDA**: 1GB
> 
> **NÚCLEOS CONSUMIDOS**: 1 núcelo  
> 
> **ESPACIO EN DISCO PARA EL SO**: 20GB (Por determinar hasta que se instale el SO)


- **SERVIDOR EMPRESARIAL**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 2/6
    - RAM: 6GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Windows Server 2022 64bit CORE
  - Adaptador de red: 1 adaptador en modo puente 

- **SERVIDOR DE MONITORIZACIÓN**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 1/6
    - RAM: 2GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Debian 11 Bullseye Sin escritorio
  - Software de monitorización: Zabblix
  - Adaptador de red: 1 adaptador en modo puente

- **SERVIDOR WEB INTRANET**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 1/6
    - RAM: 4GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Debian 11 Bullseye Sin escritorio
  - Software servidor web: Apache Web Server 2.4.57
  - Adaptador de red: 1 adaptador en modo puente


### DELL 2

> **SISTEMA OPERATIVO HOST**: Debian 11 Bullseye Con Escritorio
> 
> **MEMORIA RAM CONSUMIDA**: 1GB
> 
> **NÚCLEOS CONSUMIDOS**: 1 núcleo  
> 
> **ESPACIO EN DISCO PARA EL SO**: 20GB

- **SERVIDOR EMPRESARIAL SECUNDARIO**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 2/6
    - RAM: 6GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Windows Server 2022 64bit CORE
  - Adaptador de red: 1 adaptador en modo puente

- **SERVIDOR DE APLICACIONES**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 2/6
    - RAM: 6GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Windows Server 2022 64bit CORE
  - Adaptador de red: 1 adaptador en modo puente 

### DELL 3

> **SISTEMA OPERATIVO HOST**: Debian 11 Bullseye Con Escritorio
> 
> **MEMORIA RAM CONSUMIDA**: 1GB
> 
> **NÚCLEOS CONSUMIDOS**: 1 núcleo  
> 
> **ESPACIO EN DISCO PARA EL SO**: 20GB
> 

- **SERVIDOR DE DATOS**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 2/6
    - RAM: 5GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: Windows Server 2022 64bit CORE
  - Adaptador de red: 
    - 1 adaptador en modo puente
    - 1 adaptador conectado a la red interna del SAN (Servidor de almacenamineto).

- **SERVIDOR DE ALMACENAMINETO**
  - _RECURSOS_
    - NÚCLEOS VIRTUALES: 2/6
    - RAM: 8GB/16GB
    - Almacenamineto: 
    - UEFI: SÍ
    - PUERTOS DE CONEXIÓN DE DISCOS: OPTICAL, HARD DISK
  - SO: TrueNAS (Especializado en almacenamiento)
  - [DOCUMENTACIÓN](https://www.truenas.com/docs/)
  - Adaptador de red: 1 adaptador conectado a la red interna de el SAN.
