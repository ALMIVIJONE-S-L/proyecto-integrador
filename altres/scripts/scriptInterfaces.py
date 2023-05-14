#!/usr/bin/python3

# INFO ADICIONAL PARA EJECUTAR COMANDOS: 2 formas de ejecutar comandos (usando las librerías o os o subprocess)
# EJEMPLOS:
    # SUBPROCESS: subprocess.run("echo","hola") tiene muchas herramientas (puede ocultar el stdout!), te lo saca con \n así que hay que quitarlo con string.replace("\n","")
    # OS: os.system("echo hola") No puedes ocultar el stdout facilmente. Devuelve 0 o != 0

# Hecho SIN IA, únicamente con ayuda de la documentación oficial de python!

import json
import csv
import os, sys, subprocess

print("[info]: Este script usa python3\n[info]: El delimitador es ','\n[!!]: ADVERTENCIA: El csv tiene que contener 2 columnas 'ALIAS INTERFAZ' y 'DIRECCIÓN MAC'\n[info]: Iniciando...\n")

if len(sys.argv) != 2:
    print("[ERROR]: Únicamente 1 argumento!")
    exit()

# Si este fichero no lo ejecuta root: error

whoUsr = "whoami"
whoUsr = (subprocess.run(whoUsr,capture_output=True,text=True)).stdout
whoUsr = whoUsr.replace("\n","")

if whoUsr != "root":
    print("[ERROR]: El usuario que debe ejecutarlo debe de ser ROOT")
    exit()

# VARIABLES GENERALES
nombreFicheroCSV = str(sys.argv[1])
path = "."

if os.path.exists(nombreFicheroCSV): 
    # Si el fichero existe, haz lo siguiente...
    
    # Debe de tener la extensión csv
    if nombreFicheroCSV.endswith(".csv") != True:
        print("[ERROR]: El fichero debe de ser un fichero csv, recuerda que también tiene que tener la extensión '.csv'")
        exit()

    # TRATAR EL CSV
    with open(nombreFicheroCSV,newline='') as contenidoFichero:
        # Convertirlo a diccionario: Cada elemento de la primera línea (separada por ;) será la key y el value será el valor de las filas de abajo
        leerCSV = csv.DictReader(contenidoFichero, delimiter=',')
        try:
            # INFORMACIÓN INTERFACES
            comando = "ip -j address show" # Obtener la información física de las interfaces
            ifDic = (subprocess.run(comando,capture_output=True,text=True,shell=True)).stdout # Ejecutar el comando
            ifDic = json.loads(ifDic)
            #print(ifDic) debug

            nInterfaces = len(ifDic)
            print("[info]: Número de interfaces: ",nInterfaces)
            for linea in leerCSV:
                # Que se va hacer por cada línea del csv...
                #print(linea) ###### DEBUG ######

                nombreInterfazCSV = linea["ALIAS INTERFAZ"]

                if len(nombreInterfazCSV) > 15:
                    print(f"[ERROR]: El nombre {nombreInterfazCSV} es demasiado largo, máximo 15 carácteres.")
                    continue

                macInterfazCSV = linea["DIRECCIÓN MAC"]
            
                for interfaz in range(nInterfaces):
                    mac = (ifDic[interfaz])["address"]
                    nombreInterfazSYS = (ifDic[interfaz])["ifname"]

                    if mac == macInterfazCSV and nombreInterfazSYS != nombreInterfazCSV:
                        cmdApagarInterfaz = f"ip link set {nombreInterfazSYS} down"
                        cmdCambiarNombre = f"ip link set {nombreInterfazSYS} name {nombreInterfazCSV}"
                        cmdEncenderInterfaz = f"ip link set {nombreInterfazCSV} up"

                        os.system(cmdApagarInterfaz)
                        os.system(cmdCambiarNombre)
                        os.system(cmdEncenderInterfaz)

                        print("[Éxito!]: Nombre cambiado con éxito.")

            # CREAR UN DIRECTORIO /SCRIPTS EN ROOT CON PERMISOS ADECUADOS PARA PODER EJECUTARLO (os.mkdir,os.W_OK...)
            ruta = "/usr/scripts"
            if os.path.exists(ruta):
                print("[info]: El directorio '/usr/scripts' ya existe, no lo crearé.")
            else:
                print("[info]: Creando el directorio en '/usr/scripts'")
                os.mkdir(ruta)

            # HACER UNA COPIA DE ESTE SCRIPT AHÍ Y DEL FICHERO CSV, FICHERO CON PERMISOS DE LECTURA ÚNICAMENTE

#+++++++++++++++++ FUNCIÓN COPIAR FICHEROS ++++++++++++++++++#
            def cpFicheros(absRutaFichero):
                # Básicamente "-" cierra el file descriptor, en este caso estamos cerrando el 2(error) y el 1(stdout), es mejor que mandarlo a /dev/null
                # https://www.gnu.org/software/bash/manual/html_node/Redirections.html
                # https://www.cyberciti.biz/faq/how-to-redirect-output-and-errors-to-devnull/ para más info sobre el "-" al final

                ruta = "/usr/scripts"
                rutaAbsUsrScripts = f"{ruta}/{os.path.basename(absRutaFichero)}"
                whereAreYou = os.system(f'ls {rutaAbsUsrScripts} 2>- >-')
                if whereAreYou == 0:
                    print(f"[!!]: El fichero ya existe en {ruta}, así que no se copiará.")

                    differents = os.system(f'diff -q {rutaAbsUsrScripts} {absRutaFichero} >-') # Importante saber si son diferentes, por que luego si se modificara, ocasionará problemas, sobretodo en el csv
                    if differents != 0: # Importante el !=
                        os.system(f"mv {rutaAbsUsrScripts} {rutaAbsUsrScripts}.bck")
                        os.system(f"cp {absRutaFichero} {ruta}")
                        return print(f"[!!]: El fichero {os.path.basename(absRutaFichero)} es diferente al que hay en {ruta}, por tanto ha sido reemplazado por el que está ejecutandose.\n---| De todas formas no te preocupes, he hecho un backup del anterior ;)")
                    else:
                        return print(f"[info]: El fichero {os.path.basename(absRutaFichero)} es igual al que hay en {ruta}, por tanto haré nada.")
                elif whereAreYou != 0:
                    os.system(f"cp {absRutaFichero} {ruta}")
                    print(f"[éxito]: El fichero {os.path.basename(absRutaFichero)} copiado en la ruta {ruta}.")
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

            #os.path.dirname(__file__)} Obtener únicamente la ruta absoluta donde está el script
            #os.path.basename(__file__)} Obtener únicamente el nombre del script

            #Variable de entorno de python para obtener la ruta del script
            cpFicheros(__file__)
            cpFicheros(os.path.abspath(nombreFicheroCSV))

            # CAMBIAR PERMISOS RECURSIVAMENTE DE LA CARPETA /usr/scripts
            print("[info]: Añadiendo permisos 755 al directorio '/usr/scripts'")
            os.system(f'chmod -R 755 {ruta}')

            # CRONTAB
            #cmdWhich = "which python3"
            #dondePy3 = (subprocess.run(cmdWhich,capture_output=True,text=True,shell=True)).stdout
            #dondePy3 = dondePy3.replace("\n","")
            dondePy3 = 'python3' # Considerando que tenemos python3 instalado en la ruta por defecto, si se quiere automatizar mejorar las líneas de arriba (porque se repite.)

            cmdEjecucionScript = f"{dondePy3} {ruta}/{os.path.basename(__file__)} {ruta}/{os.path.basename(nombreFicheroCSV)}"
            cronInstruccion = f"@reboot root {cmdEjecucionScript}"
            existeLaLineaEnCrontab = os.system(f"grep -w '{cronInstruccion}' /etc/crontab >-")
            
            if existeLaLineaEnCrontab != 0:
                os.system(f"echo '{cronInstruccion}' >> /etc/crontab")

                print("[éxito]: La ejecución del script ha sido añadida a crontab correctamente")
            else:
                print("[info]: La línea de ejecución ya está añadida a crontab.")
        except:
            print("[ERROR]: El fichero no está correctamente formateado, recuerda únicamente 2 columnas: 'ALIAS INTERFAZ' y 'DIRECCIÓN MAC'")
            exit()
else:
    print("[ERROR]: No existe el fichero!")
    exit()
