# COMANDOS Y RESOLUCIÓN DE PROBLEMAS EN POWERSHELL

## INDICE
- [Ejecutar MSIs en WCore](#ejecutar-msis)
- [WServer se apaga solo](#windows-server-se-apaga-solo)
- [Generar otro SID](#generar-otro-sid)

## EJECUTAR MSIs

El siguiente comando lo que hace es ejecutar el .msi **sin mostrar la ventana**, así se puede ejecutar por powershell en los windows core (porque como se sabe, los windows core no tienen una interfaz gráfica como tal). Para ello se tiene que usar los argumentos /quiet y /passive

```powershell
start-process ruta\paquete.msi -ArgumentList "/quiet /passive"
```

## WINDOWS SERVER SE APAGA SOLO

**Problema:**

El problema es que windows server core se apaga en momentos aleatorios, esto es por el tema de la licencia, que se ha expirado. 

**Posible solución:**

Después de haber investigado durante un buen tiempo, una de las soluciones que he encontrado por internet ha sido usar el programr **slmgr** (que gestiona todo lo que envuelve el tema de licencias) para  poder volver al dia 0 de la licencia (**SOLO SE PUEDE HACER HASTA 6 VECES** y es solo para propósitos de pruebas y laboratorios, en una empresa no se debería de hacer, pero en este caso nos viene como anillo al dedo si funciona)

```powershell
# Ver la version de licencia
slmgr -dlv

# Volver al dia 0 de la licencia
slmgr -rearm

# Reiniciar el servidor (obligatorio)
Restart-Computer
```

[Más Info](https://mulcas.com/windows-server-shuts-down-unexpectedly/)

## GENERAR OTRO SID

Este problema, en nuestro caso ha pasado en todos los servidores, porque como hice una imagen personalizada a partir de un único windows server, todos tienen el mismo SID (Security ID), así que para regenerarlo hay que usar el programa **sysprep** (system preparation), que también se puede usar por la línea de comandos (para tardar menos). En este caso añadiré alguna opción de mas, para que se reinicie cuando acaba y que no muestre información.
Es imporante saber la SID del equipo actual, para saber si se ha cambado correctamente o no.

```powershell
# Saber la SID actual [nombreEquipo -> SID]
get-ADComputer -Filter "*" | select-object name,sid

# Cambiar la SID [RECORDATORIO: tabulador cuando pongas la ruta, para que se te autocomplete la variable de entorno y no de error]
# Ruta alternativa: C:\windows\system32....\sysprep.exe
$env:windir\system32\sysprep\sysprep.exe /generalize /oobe /quiet /reboot
```

[Más info](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/sysprep-command-line-options?view=windows-11)
