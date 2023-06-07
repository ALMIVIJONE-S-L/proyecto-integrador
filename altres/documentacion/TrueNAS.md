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

  1. Después de instalarlo configuramos la IP en la opción 1 que es la de ´Configure Network Interfaces´.
  2. Posteriormente, nos conectamos a través de la IP por el navegador con el usuario: `root` y la contraseña: `root1234`.
  3. Ya dentro del propio TrueNAS lo primero es cambiar el idioma en: ´System-General-Language´ en el desplegable buscamos el Español.
  4. Luego fuimos a ´Red-Global Configuration´ y comprobamos que el nombre Hostname era el que queríamos y la puerta de enlace estaba bien configurada igual que la IP, si no es as solo deberíamos cambiarlo en esa pestaña.
  5. Posteriormente, lo que realizamos fue introducir los discos que queríamos, en nuestro caso metimos 3 discos de 20 GB.
  6. Luego de introducir los discos en la interfaz web del TrueNAS en: `Almacenamiento-discos´ nos deberían aparecer los discos.
  7. En almacenamiento-Pools deberemos darle a ´AÑADIR-Create new pool-Nombre(Debes poner el nombre que le quieras dar)-y debes seleccionar los discos-luego a la flecha-Mirror-Crear-Confirmar-Crear volumen´ .
  8. Posteriormente, cuando se termine de crear la pool hay que darle a los tres puntos de la derecha y a ´Add Dataset-nombre que desees- SUBMIT´.

## Problemas

  1. Problema inicializador ISCSI 




