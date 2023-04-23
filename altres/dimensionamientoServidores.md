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
  > _Cabe recalcar que virtualbox (y los programas de virtualización) cuando te permiten poner núcleos a la máquina, se refiere a los hilos del procesador host, son llamados **Virtual CPUs**, ya que estos son habilitados por la tecnología de virtualizar que se habilita en la BIOS/UEFI_
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
    - (posible) Servicio DHCP
  - 
  - 

- ### SERVIDOR EMPRESARIAL 2 | _WINDOWS SERVER 2022 CLI_
  - .... (acabar)

- ### SERVIDOR APLICACIONES Y UTILIDADES | _WINDOWS SERVER 2022 CLI_
  > Será un windows server a parte, para poder evitar problemas de seguridad y gestión de recursos.
  - Tendrá el servicio RemoteAPP instalado. **Todos los usuarios de la empresa** tendrán acceso a Libreoffice y GIMP.

- ### SERVIDOR DE MONITORIZACIÓN | _DEBIAN 11 BULLSEYE_
  - Zabbix?, Nagios?, Pandora?, etc: Revisar cual puede cumplir todas nuestras necesidades. Importante que tengán gestión de **LOGS**

- ### SERVIDOR DE DATOS | _ELEGIR OS(TrueNAS? (quizás este es la mejor opción), openfiler?, debian? este nos consumirá mas tiempo para buscar, instalar y configurar los paquetes necesarios, mejor usar alguno especializado como TrueNAS, openfiler, etc.)_

- ### SERVIDOR WEB INTRANET | _DEBIAN 11 BULLSEYE_
  - Nginx o Apache2

- ### SERVIDOR WEB EXTERNALIZADO | _GitHub Pages? para no pagar dinero ya que no es una situación real,_
  > Se podría indicar alguna de las mejores soluciones de hosting (sin hacerlo de verdad, únicamente indicando cual sería la solución real)


> **SUGERENCIAS:**
> Mirror debian local, para los servidores?, este servidor tendría que tener una buena configuración de seguridad para comprobar la integridad de los paquetes, etc..
> Establecer un gestor de contraseñas, por ejemplo keepass2 (ver como se implementaría, y si tiene buena pinta ponerlo)

---

## DISTRIBUCIÓN DE SERVIDORES VIRTUALES

<!-- 
RECORDAR INDICAR LO SIGUIENTE EN ESTE APARTADO: 
- recursos que va a consumir cada máquina virtual (cores virtuales, ram, calidad gráfica, UEFI, discos habilitados [hard disk, network, optical, etc])
- Indicar el SISTEMA OPERATIVO DEL HOST donde irá virtualbox instalado
-->

### DELL 1

- **SERVIDOR EMPRESARIAL**

### DELL 2

### DELL 3

