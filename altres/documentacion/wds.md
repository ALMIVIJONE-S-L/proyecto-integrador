# WINDOWS DEPLOYMENT SYSTEM

Este servicio debe de ser instalado en un sistema windows con interfaz gráfica, ya que sinó no funcionará. (según lo que han dicho en una [página de microsoft](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/hh831764(v=ws.11)#managing-the-wds-role-using-the-server-core-installation-option))

Si lo tienes en GUI, debes de seguir los pasos de algún tutorial, ya no es muy complicado.

Hay que tener en cuenta que hay que indicar una ruta local y hay que montar la imagen iso, para que pueda WDS encontrar los ficheros boot.wim y los demás necesarios.

# PROBLEMA CON EL DHCP

Si estamos utilizando un DHCP externo (como puede ser el de un router mikrotik) tenemos que ir al apartado de servidor `DHCP > "option" > y aquí añadir la opción con el código 66 y 67 (en diferentes opciones)` y luego ir a `"addresses"` (donde están los DNS que se aplican, gateways, etc de las pool dhcp) y en todas las que queramos que tenga la opción de PXE tendremos que añadirle esas 2 opciones.

Código 66 significa al siguiente server

Código 67 significa al boot-file

[MÁS INFO](https://blog.xentoo.info/2013/12/22/mikrotik-dhcp-and-pxe-boot/)