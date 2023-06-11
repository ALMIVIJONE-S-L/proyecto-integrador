# Configuración de Directivas y Cuotas de Carpetas

A continuación mostrare la ruta a las diferentes platillas de las GPO, para saber en un futuro donde se enceutran las platillas a implmentar (Se presupone que sabemos como, donde y a quien vincular dichas GPO).

Lo recomendable es crear primero una GPO sin vincularla a ninguna OU y comprobar su correcto funcionamiento.

1. Directivas

    - **Prohibición de acceso a unidades de almacenamineto externas (CD, USB...):** Configuración del equipo > Directivas > Plantillas Administrativas > Sistema > Acceso de almacenamiento extraíble > Todas las clases de almacenamiento extraíble: denegar acceso...

    - **Desactivación de acceso a terminal:** Configuración de usuario > Directivas > Platillas administrativas > Sistema > Impedir acceso al símbolo del sistema.

    En las siguientes directivas será necesario previamente descargar el software adecuado (.msi) y guardarlo en una ruta accesible la cual se utilizará para acceder y desplegar el paquete de software correspondiente.

    - **Directiva para desplegar *Mozilla Thunderbird* (Asignada):** Configuración de Equipo > Directivas > Configuracion de Software > Instalación de software > Clic derecho y seleccionamos "Nuevo paquete" > Haciendo uso de un ruta de red válida, accedemos a la carpeta donde se halla el paquete de software y seleccionamos el paquete a implementar > Aparacerá un diálogo emergente en el que seleccionaremos la opción "Asiganada".

    - **Directiva para desplegar *Mozzilla Firefox* (Publicada) :**
    Configuración de usuario > Directivas > Configuración de Software > Instalación de software > Clic derecho y seleccionamos "Nuevo paquete" > Haciendo uso de un ruta de red válida, accedemos a la carpeta donde se halla el paquete de software y seleccionamos el paquete a implementar > Aparecera un diálogo emergente en el que seleccionaremos la opción "Publicada"

    - **Conectar y montar automáticamente unidad de red:** Configuración de usuario > Preferencias > Configuración de Windows > Carpetas > Nuevo (Click derecho) > Carpeta > "Especificamos la ruta de red y otras configuraciones"

2. Implenetación de cuotas en las carpetas

En nuestro caso, hemos recurrido a hacerlo mediante comandos de powershell, para ello, es necesario previamente instalar el rol de *Administración de recursos del servidor de archivos* (Dentro de servicios de archivos y almacenamineto > Servicios de i SCSI y almacenamiento).


```powershell
New-FSRNQuota -Path E:\AdminDominio\CarpPersonal -Description "Cuota de espacio para las carpetas personales" -Size 200MB
```
(Cambiar al ruta del comando por la ruta a la carpeta que deseeemos mapear)

Cabe destecar que ha tocado usar una rotua local debido a que, si utilizabas un ruta de red, el comando no la reconocía.