# TrueNAS


## Índice

- [1. Introducción](#introducción)
- [2. Requisitos](#requisitos)
- [3. Instalación](#instalación)
- [4. Configuración](#configuración)
- [5. Problemas](#problemas-conocidos)


## Introducción

En esta documentación, explica cómo instalamos y configuramos el TrueNAS, un sistema operativo de almacenamiento de código abierto. TrueNAS ofrece servicios de almacenamiento por red.

## Requisitos

Antes de comenzar con la instalación de TrueNAS, hay que cumplir con los siguientes requisitos:

Un servidor compatible con la arquitectura recomendada para TrueNAS.
Un dispositivo de almacenamiento apropiado, con disco duro suficiente.
Configuración de la red correcta.

## Instalación

Nosotros seguimos estos 
  1. Lo primero que hicimos fue descargar la ISO del sitio web oficial: https://www.truenas.com.

  2. Creamos una máquina virtual con los requisitos que quisimos, en nuestro caso fue 2 núcleos y 8 GB de memoria RAM.

  3. Instalamos el Sistema Operativo.
  

## Configuración

  1. Después de instalarlo configuramos la IP en la opción 1 que es la de `Configure Network Interfaces`, ahi dentro, deberemos configurar las interfaces de red con sus respectivas direcciones IP, máscara de red y puerta de enlace (si fuese necesario), todo ello, parapo der acceder desde las web al panel de adminstración de TrueNAS, que nos permitirá configurarlo todo gráficamente.

  **Iniciamos sesión en el administrador gráfico de TureNAS**

  2. Posteriormente, a través de un navegador web, nos conectamos a través de la IP que hemos configurado previamente y nos paracerá una pantalla para iniciar sesión en el administrador web de TrueNAS, los usuarios y ocntraseña por defecto son:

    - Usuario: root
    - Contraseña: 1234

  3. Ya dentro del propio TrueNAS lo primero es cambiar el idioma en: `System-General-Language` en el desplegable buscamos el Español (En caso contrario nos saltaremos este paso).

  4. Luego, nos dirigimos a `Red-Global Configuration` y comprobamos que el nombre Hostname era el que queríamos y la puerta de enlace estaba bien configurada igual que la IP, si no es así, lo modificaremos acorde a nuestras preferencias.

  **Unión al dominio**

  5. El siguiente paso, sería unirnos al dominio. Para ello, en el apartado `*Network* > *Global configuration*`, ahi configuraremos el servidor DNS poinendo la direccion IP del DNS y la puerta de enlace del servidor empresarial (Active Directory).

  6. Luego, en el apartado *Domain* ingresaremos el nombre del dominio al que queremos unir el servidor NAS NAS (ej. *barcelona.lan*) y en el apartado *Hostname* ingresaremos el nombre de dominio que le daremos a nuestro al servidor.

  7. A continuación, nos dirigimos a *Directory Services* > *Active Directory* y ingresaremos el nombre de nuestro dominio, asi como la cuenta de Administrador y su contraseña (Del servidor empresarial (AD/DC)) y marcamos la casilla *Enable* y guradamos los cambios. Con esto, ya se habría creado una zona de búsqueda directa en nuestro servidor DNS que apunte a la direccion IP de el servidor TrueNAS.

  **Creación de pool iSCSI**

  8. Posteriormente, lo que realizamos fue introducir los discos que queríamos, en nuestro caso metimos 3 discos de 20 GB.

  9. Luego de introducir los discos en la interfaz web del TrueNAS en: `Almacenamiento-discos` nos deberían aparecer los discos.

  10. En almacenamiento-Pools deberemos darle a `AÑADIR-Create new pool-Nombre(Debes poner el nombre que le quieras dar)-y debes seleccionar los discos-luego a la flecha-Mirror-Crear-Confirmar-Crear volumen` .

  11. Posteriormente, cuando se termine de crear la pool hay que darle a los tres puntos de la derecha y a `Add Dataset-nombre que desees- SUBMIT`.

## Creación del volúmen iSCSI

  1. Lo priermo que debemos hacer, es tener previamente los discos necesarios conectados a el Servidor TrueNAS. A continuación, nos dirigiremos a *Sharing* > *Block Shares(iSCSI)*. Una vez dentro, mediante el *Wizard*, configuraremos el pool.

  2. Una vez dentro de el asistente, lo primero que haremos sera darle un nomble al pool (ej. datos). Luego en *Extent Type* seleccionamos *Device* y creamos uno nuevo.

  3. Seleciconamos el pool en el que lo queremos crear (Pool iSCSI).

  4. Le asiganmos el tamaño que tendra el pool.

  5. En *Sharing Platform* seleccionamos la opción *Modern OS* y continuamos.

  6. Ahora, crearemos un nuevo portal, por el que nos conectaremos a el volúmen iSCSI. En un principio, no cambaremos nada más que la dirección IP en la que pondremos la dirección 0.0.0.0 para que se peuden conectar todas la direcciones IP de nuestra red (este parametro se puede modificar más adelante acorde a nuestras necesidades o preferecnias al igual que en los demás parametros).

  7. En el iniciador, por defecto lo deramoes vacío, y en redes autorizadas, ingreasremos la dirección de red por la que queremos que se comparta el recurso.

  8. Guardamos los cambios, revisamos que toodo esté correcto y confirmamos las cambios.

  9. Finalmente, se debería de inciar el servicio iSCSI, pero si no se iniciara, podemos iniciarlo dirigiendonos a *Services*, seleciconamos iSCSI y lo activamos.

  Con todo esto, ya tendríamos creado el volḿuen iSCSI, ahora, lo que faltaría, sería desde el servidor de Datos, conectarnos por red a dicha unidad iSCSI y formatearla para crear un volúmen.

  ## Connectarse el disco iSCSI desde Windows Server i crear (formatear) un volúmen.

  Este paso, se puede realizar gráficamente si se instalan en Windows las herrmientas de administración de el rol correpondiente, pero, en nuestro caso, lo relizaremos desde comandos de PowerShell.

  1. Lo primero, sera instalar en el servidor de datos los rol de *Servidor de destino (Servicios de archivos y almacenamiento > Servicios iSCSI y archivo > Servidor del destino i SCSI).

  Hablitamos el servicio para que se inicie automáticamente:

  ```powershell
  Set-Service -Name MSiSCSI -StartupType Automatic
  ```

  2. A continuación, deberemos obtener IQN, que es el idetificador único de un dispositivo en una red iSCSI:

  ```powershell 
  Get-iSCSITarget
  ```

  A continuación, para conectarse al destino iSCSI, ejecutaremos el siguiente comando:

  ```powershell
  Connect-IscsiTarget –IsPersistent $True
  ```

Con esto, tan solo nos quedaría crear el volúmen en Windows, darle formato y montarlo en un letra de unidad, para ello, lo más sencillo sería gestionar esto desde la herrmienta WAC (Windows Admin Center) habiendonos conectado previemente al servidor de Datos. Y que el WAC no permite hacer esto de forma gráfica, asi como crear las estrtucutras de directorios y compartir carpetas.

Por último, adjutnaré un video de el cual se ha sacado parte de este tutorial por si fuese necesario accder a el por si no tenemos algo claro.

## [ENLACE AL VÍDEO](../Videos/04.%20TrueNAS%20-%20Configuraci%C3%B3n%20de%20iSCSI.mp4)
