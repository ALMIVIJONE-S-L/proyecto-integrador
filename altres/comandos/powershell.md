# COMANDOS POWERSHELL

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
