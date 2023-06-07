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

Antes de comenzar con la instalación de TrueNAS, asegúrate de cumplir con los siguientes requisitos:

Un servidor compatible con la arquitectura recomendada para TrueNAS.
Un dispositivo de almacenamiento apropiado, como discos duros o SSDs.
Una memoria USB de al menos 8 GB para crear una unidad de arranque de TrueNAS.
Conexión a Internet para descargar la imagen de TrueNAS y recibir actualizaciones.


## Instalación

Nosotros seguimos estos 
  1. Lo primero que hicimos fue descargar la ISO del sitio web oficial: https://www.truenas.com.
  2. Creamos una maquina virtual con los requisitos que quisimos, en nuestro caso fue 2 nucleos y 8 GB de memoria RAM.
  3. Intalamos el Sistema Operativo.
  4. Despues de intalarlo configuramos la IP en .
  5. Posteriormente nos conectamos atraves de la IP por el navegador con el usuario: `root` y la contraseña: `root1234`.
  6. Acepta los términos de la licencia.
  7. Selecciona el dispositivo de almacenamiento donde se instalará TrueNAS.
  8. Configura las opciones de red, como la asignación de direcciones IP.
  9. Crea una contraseña segura para la cuenta de administrador de TrueNAS.
  10. Espera a que se complete la instalación y reinicia el servidor.


## Configuración

Indica cómo las personas pueden contribuir al proyecto. Esto puede incluir instrucciones sobre cómo informar problemas, enviar solicitudes de extracción (pull requests) o un enlace a las directrices de contribución.

## Problemas

Indica la licencia bajo la cual se distribuye el proyecto. Puede ser un enlace a un archivo de licencia o la información de la licencia en sí misma.
