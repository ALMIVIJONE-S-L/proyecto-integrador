# Docuemtación de la configuración de el switch TP-LINK

En este documento, se detallarán todas las distintas configuraciones relizada en el switch TP-LINK centradose principalmente en la creación de las VLANS y el Bounding.

## Creación de VLAN

1. Para la creación de VLAN en el switch, deberemos conectarnos a la página de administración de el mismo, por defecto, suele ser la IP `192.168.0.1`. Para ello, nos conectaremos con un calbe al switch y configuraremos nuestro adaptador de red con una dirección IP del mismo rango a la del switch, pero que no sea la misma.

2. Una vez nos enconetremos en la pagina de administración del switch, nos dirigiremos al apartado `VLAN > 802.1Q VLAN`.  

    Cabe destacar que en el caso de este swtich, los puertos *tagged* son lo que conservan la eqtiqueta de la VLAN, es decir, puertos trunk y los puertos **untagged* son los puertos los cuales no matienen la etiqueta y son llamados generalmente *access*.

    A continuacioón, adjuntaré una imágen para visualizar lo que estoy tratando de explicar.

![CREACIO VLANS](../Imagenes/TP-LINK/vlan.png)

3. Volviendo al la creación de las VLAN, en la seecion `802.1Q VLAN`, nos encontraremos un menú parecido a este pero con una única VLAN con ID 1 llamada `System-VLAN`que es la VLAN a la que se asiganan todos losp uertos por defecto de el switch:

![MENU VLAN](../Imagenes/TP-LINK/VLAN-Config.PNG)  

Para crear una VLAN, lo que deberemos hacer es pulsar el boton *Create*, despúes, no aparecera un menu igual al de la primera [IMAGEN](../Imagenes/TP-LINK/vlan.png).

Ahi dentro, deberemos escoger los puertos que dessemos añadir a la VLAN, su ID y un nombre.

Cabe destacar que, dependiendo del uso que le queremos dar al puerto, deberemos decidir si el puerto es *Tagged* o *Untagged* dependiendo de si van conectadas a un equipo, o vienen de otro switch con otras VLAN que no deben ser desetiquetadas.