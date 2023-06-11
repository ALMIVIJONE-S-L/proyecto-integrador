- [1. CONFIGURACIONES INICIALES](#1-configuraciones-iniciales)
- [2. BOUNDING](#2-bounding)
- [3. VLANS](#3-vlans)
- [4. SSH](#4-ssh)


# 1. CONFIGURACIONES INICIALES

Estas configuraciones son opcinales, pero la de hostname suele ser muy buena opción usarla, para tener todos los equipos más controlados y saber cual es cual.

```js
R1> enable // Modo Exec en dispositivo de cisco

router(config)# hostname R1 // Renombrar el router

R1(config)# enable secret 1234 // Añadir contraseña al modo EXEC
```

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

# 3. VLANS

```js

```


# 4. SSH

