# DIMENSIONAMIENTO DE LOS SERVIDORES

En este apartado realizaremos la práctica de indicar en que servidores físicos van a ir todos los servidores virtualizados.

## ÍNDICE:
- [RESUMEN DE LOS RECURSOS](#breve-resumen-de-los-recursos)
- [CONFIGURACIONES A TENER EN CUENTA](#configuraciones-a-tener-en-cuenta)
- [SERVIDORES VIRTUALES Y SERVICIOS A INSTALAR EN CADA UNO](#servidores-virtuales-y-servicios-a-instalar-en-cada-uno)
- [DISTRIBUCIÓN DE SERVIDORES VIRTUALES](#distribución-de-servidores-virtuales)
- [SISTEMA DE COPIAS DE SEGURIDAD](#sistema-de-copias-de-seguridad)
- 
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

- **SERVIDOR EMPRESARIAL** | _WINDOWS SERVER 2022_
  - Active Directory y Domain Controller (ADDC)
    - Información a tener en cuenta:
      - > - **DOMINIO**: `barcelona.lan`
        > - **TIPOS DE USUARIOS**:
        >     > _Explicación de cada departamento en el PDF Práctica 3.3._
        >   - Gerente
        >   - Administrativo
        >   - Comerciales
        >   - Técnicos
        >   - Laboratorio
        >   - Producción
        >   - Almacén
        > - **PERFILES MÓVILES**: Comerciales
        > - **PERFILES OBLIGATORIOS**: Usuarios de Laboratorio y Técnicos
        > - 
  - Servicio de Aplicaciones

- **SERVIDOR EMPRESARIAL 2** | _WINDOWS SERVER 2022_
  - Active Directory y Domain Controller (ADDC)

---

## DISTRIBUCIÓN DE SERVIDORES VIRTUALES

<!-- 
RECORDAR INDICAR LO SIGUIENTE EN ESTE APARTADO: 
- recursos que va a consumir cada máquina virtual (cores virtuales, ram, calidad gráfica, UEFI, discos habilitados [hard disk, network, optical, etc])
- Indicar el SISTEMA OPERATIVO DEL HOST donde irá virtualbox instalado
-->

### DELL 1

### DELL 2

### DELL 3

---

## SISTEMA DE COPIAS DE SEGURIDAD
