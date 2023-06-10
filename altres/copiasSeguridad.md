# POLÍTICA DE COPIAS DE SEGURIDAD

## INDÍCE

...

## Introducción

En este documento vamos a explicar de forma breve que tipo de estrategia de copias de seguridad vamos a implementar en nuestro sistema informático.

En nuestro caso, hemos decidido utilizar una regla de copias de seguridad bastante común, esta se llama 3-2-1. Además también vamos a encriptar todos los backups.

> _Cabe recalcar que esta estrategia no es perfecta, pero para el tipo de sistema que estamos implementando es más que suficiente, aunque si fuese una empresa de verdad probablemente se quedaría algo corta, también dependiendo de que tipo de empresa estemos hablando_

## Explicación más en profuncidad de _3-2-1_

El nombre se refiere a:

**Tres** tipos de copias:

Un backup primario, y luego 2 copias más de los datos.

Tendremos 2 tipos de backups primarios:

1. El **primero** será destinado a copias de los equipos como **servidores**, **equipos de red** y demás dispositivos importantes. 

    Las **copias regulares** de los servidores y equipos de red se harán cada semana, ya que de normal no se harán muchas configuraciones en los equipos, pero es bueno preservar actualizados los backups. **Se mantendrá la configuración inicial**, la cual no se borrará y a partir de ahí se conservarán 2 copias más con 1 semana de diferencia. 

    > Por ejemplo, esta semana se hace una copia, la semana que viene se hace otra y ya la semana siguiente se borrará la primera copia que se ha hecho y se hará una nueva. **Obviamente la copia inicial NO hay que borrarla**

2. El **segundo tipo** estará destinado a los datos como tal de la empresa. Básicamente los directorios compartidos, donde están las carpetas personales, etc.
    
    Las copias de seguridad en este tipo de datos se realizarán cada día y se harán 3 tipos de copias, la primera será **Full Backup**, la cual será también 1 vez a la semana y las 2 siguientes serán incrementales.


El backup primario destinado a servidores y equipos de red será de tipo **FULL BACKUP**. 

En el caso de los equipos de red se hará un backup cuando esté todo configurado con sus vlans y demás, y cuando se haga una configuración importante se volverá a realizar un backup.

En el caso de los servidores se clonará tal y como está el sistema.

> Todas las copias serán **encriptadas**, tanto los backups de los equipos importantes como los datos importantes de la empresa

**Dos** tipos de almacenamiento diferente:

Se refiere que hay que guardar las copias de seguridad en 2 tipos de unidades de almacenamiento distintas.

**Una** copia fuera del centro de trabajo:

Se refiere a tener un sitio físico donde almacenar las copias de seguridad y debe de estar alejado geográficamente hablando de la empresa. Básicamente almacenamiento **Cloud**, como puede ser AWS.

Aquí se subirá el Full Backup de todo.


