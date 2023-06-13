- [1. CONFIGURACIONES INICIALES](#1-configuraciones-iniciales)
- [3. VLANS](#3-vlans)
  - [CREACIÓN DE VLANs:](#creación-de-vlans)
  - [ASIGNACIÓN DE VLANs](#asignación-de-vlans)
  - [BUENAS PRÁCTICAS](#buenas-prácticas)
- [2. BOUNDING](#2-bounding)
- [4. SSH](#4-ssh)


# 1. CONFIGURACIONES INICIALES

Estas configuraciones son opcinales, pero la de hostname suele ser muy buena opción usarla, para tener todos los equipos más controlados y saber cual es cual.

```js
R1> enable // Modo Exec en dispositivo de cisco

router(config)# hostname R1 // Renombrar el router

R1(config)# enable secret 1234 // Añadir contraseña al modo EXEC
```

# 3. VLANS

4. CONFIGURACIÓN DE INTERFACES CON VLANs
	1. **GESTIÓN DE INTERFACES**
		1. **`show interfaces status`**: Información general de las interfaces
	2. **CREACIÓN VLANs** (config)
		1. **`vlan ...`**
		2. **`name ...`** (config-vlan)
	3. **ASIGNACIÓN VLANS** (config-if)
		1. **`switchport mode access`**
		2. **`switchport access vlan ...`**

## CREACIÓN DE VLANs:

**INCLUIDA la black hole**: con la id 99 (por ejemplo)

```js
// Crear VLANs (algunos casos se crea automáticamente)
COMERCIAL-MADRID(config)# vlan id-VLAN

// Ponerle un nombre a la VLAN --> IMPORTANTE
COMERCIAL-MADRID(config-vlan)# name id-VLAN

// Eliminar VLANs
COMERCIAL-MADRID(config)# no vlan id-VLAN
```

## ASIGNACIÓN DE VLANs

**ACCESO**:

```js
// Entrar a la configuración de la interfaz
COMERCIAL-MADRID(config)# interface fa1/1

// Configurar la vlan
// Modo de la vlan (access o trunk)
COMERCIAL-MADRID(config)# switchport mode access

// Asignar la VLAN al puerto
COMERCIAL-MADRID(config)# switchport access vlan 10 // Si no existe la crea
```

**ACCESO BLACK HOLE**:

Mover todas las interfaces sin usar a esta vlan, así la de por defecto (VLAN 1) no tiene ninguna interfaz asignada

```js
// Entrar a la configuración de la interfaz
COMERCIAL-MADRID(config)# interface fa3/1

// Configurar la vlan
// MODO access
COMERCIAL-MADRID(config)# switchport mode access

// Asignar la vlan black hole
COMERCIAL-MADRID(config)# switchport access vlan 99
```

**TRUNK**:

```js
// Entrar a la configuración
COMERCIAL-MADRID(config)# interface gig0/1

// EN EL CASO DE QUE HAGA FALTA
R1(config-if)# switchport trunk encapsulation dot1q 

// Modo troncal (trunk)
COMERCIAL-MADRID(config)# switchport mode trunk

// Habilitar las vlans correspondientes para pasar por trunk
COMERCIAL-MADRID(config)# switchport trunk allowed vlan id-Vlan,id-Vlan...
```

## BUENAS PRÁCTICAS

1. Guardar cambios SIEMPRE: ...# **write**
2. Dejar la **Default VLAN** SIN puertos asociados 
3. **Desactivar** los puertos no utilizados
4. Crear una **VLAN Black Hole** y asociarle los **puertos que no se están utilizando**
5. Establecer una **VLAN diferente de la 1** para **Administración del switch**
6. Establecer una **VLAN diferente de la 1** como **VLAN nativa**
7. Establecer la **misma VLAN nativa** en los **dos extremos**  **de un enlace trunk**

# 2. BOUNDING

```json

// PORT-CHANNEL
R1(config)# interface port-channel 1 // ENTRAR A LA INTERFAZ

R1(config-if)# switchport trunk encapsulation dot1q // EN EL CASO DE QUE HAGA FALTA
R1(config-if)# switchport mode trunk // Indicar el modo trunk
R1(config-if)# switchport trunk allowed vlan 1,50-60 // Indicamos las vlans permitidas
R1(config-if)# no shutdown

// INTERFACES
R1(config)# interface range fastEthernet 0/1 - 2
R1(config-if-range)# switchport trunk encapsulation dot1q // EN EL CASO DE QUE HAGA FALTA
R1(config-if-range)# switchport mode trunk // Indicar el modo trunk
R1(config-if-range)# switchport trunk allowed vlan 1,50-60 // Indicamos las vlans permitidas
R1(config-if-range)# channel-group 1 mode active // Indicamos las vlans permitidas
R1(config-if-range)# no shutdown
```

[INFO](https://community.cisco.com/t5/routing/create-bounding-interface/td-p/1655200)


# 4. SSH

```js
// Poner una IP de administración a una vlan
R1(config)# interface vlan 20

R1(config-if)# ip address <direccionIP> <mask>
R1(config-if)# end
R1# write


// General la crypto key
R1(config)# crypto key generate rsa general-keys modulus 2048

// Configuración de la línea de la "virtual terminal"
R1(config)# line vty 0 15
R1(config-line)# transport input ssh
R1(config-line)# login local
R1(config-line)# exit

// Versión del SSH
R1(config)# ip ssh version 2

R1(config)# username <username> privilege 15 secret <password>

// Guardar config
R1(config)# end
R1# write
```
