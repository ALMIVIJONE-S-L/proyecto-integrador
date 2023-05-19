<#
SCRIPT PARA LA CREACIÓN DE USUARIOS
Recordar: Este script al igual que el csv, deben de estar en las respectivas carpetas donde se hacen los backups y tal

Carácterísticas del script:
- CREAR UOs
- CREAR GRUPOS, AÑADIRLOS A UOs
- CREAR USUARIOS, AÑADIRLOS A GRUPOS Y UOs
- [SUGERENCIA] PERFILES MÓVILES AUTOMÁTICAMENTE
- [SUGERENCIA] PERFILES OBLIGATORIOS AUTOMÁTICAMENTE
- [SUGERENCIA] CARPETA PERSONAL AUTOMÁTICAMENTE
#>

<#
================================
EJEMPLO DEL .CSV DE LOS USUARIOS:
================================
nom,cognom1,cognom2,dni,sede,dept,descrip
ABEL,ZAFRILLA,PASCUAL,17629125,Alcoi,Gerencia,Jefe
AITANA,VIDAL,RIBERA,68793380,Alcoi,Administración,Jefe
ALEJANDRA,VIDAL,TORREGROSA,65006955,Alcoi,Administración,Miembro
================================
PRECAUCIONES: Tener cuidado con los acentos, puede ser que explote algún comando por eso, probablmente eso habrá que solucionarlo.
#>

# ========= VARIABLES ======== #

  # [+] NOMBRE SEDE
  $sede = "Barcelona"
  $sede = $sede.ToLower()


  # [+] DOMINIO
  $finalDominio = ".lan"
  $dominio = $sede + $finalDominio
  
  # [+] UNIDAD ORGANIZATIVA RAÍZ
  $raizUO = $sede.ToUpper()

  # [+] LEER EL FICHERO .CSV
  $ruta = "C:\Users\Administrador\Desktop\usuaris(2).csv" #### CAMBIAR RUTA !! ####
  $ficheroCSV = import-csv $ruta
  
  # [+] LISTA ACTUAL DE LAS UNIDADES ORGANIZATIVAS
  $listaActualUO = Get-ADOrganizationalUnit -Filter 'Name -like "*"'

  # [+] DEPARTAMENTOS
  # Necesitaremos meter el nombre de los departamentos en un array para la creación de las UOs y Grupos
  $departamentos = $(
    foreach ($lineaInfo in $ficheroCSV){
      $lineaInfo.dept
    }
  ) | sort-object | get-unique

  
# ========= CÓDIGO =========== #

# [+] COMPROBACIÓN SEDE
foreach ($sede in $ficheroCSV){
  if ($ficheroCSV.sede -match $sede){
    
    # [>] UNIDAD ORGANIZATIVA RAÍZ
    if ($listaActualUO.Name -eq $raizUO){
        write-host -ForegroundColor Yellow "[aviso]: Ya existe la UO $raizUO, no la crearé de nuevo."
    }
    else{
        New-ADOrganizationalUnit -Name $raizUO -Path "DC=$sede,DC=$finalDominio"
        write-host -Foregroundcolor green "[OK] La Unidad Organizativa $raizUO ha sido creada con exito!"
    }

    # [>] UNIDAD ORGANIZATIVA DENTRO DE RAÍZ
    $rutaRaizUO = Get-ADOrganizationalUnit -Filter 'Name -like $raizUO' | SelectObject -ExpandProperty DistinguishedName
    foreach ($nombreDept in $departamentos){
        if ($listaActualUO.name -eq $nombreDept){
            write-host -ForegroundColor yellow "[AVISO] Como ya existe la UO $nombreDept, NO se creará"
        }
        else{
            New-ADOrganizationalUnit -Name $nombreDept -Path $rutaRaizUO
            write-host -Foregroundcolor green "[OK] La Unidad Organizativa $nombreDept ha sido creada con exito!"
        }
    }

    # [>] GRUPOS GLOBALES
    $departamentos += "JefesDepartamento" # Añadir Jefe al array, para que se cree también el grupo.

    foreach ($nombreGrupo in $departamentos){
        $deptPath = (Get-ADOrganizationalUnit -filter 'Name -Like "*"').DistinguishedName -Match "$nombreGrupo"
        $nombreGrupo = "gg" + $nombreGrupo # QUITAR ACENTOS!!!
        $raicesAD = (Get-ADGroup -Filter 'Name -like "*"' | where-object {$_.GroupScope -eq "Global" -and $_.DistinguishedName -Match "OU=$raizUO"} ).DistinguishedName

        if ($raicesAD -match $nombreGrupo){
            write-host -ForegroundColor yellow "[AVISO] El Grupo $nombreGrupo ya existe"
        }
        else {
            New-ADGroup -Name $nombreGrupo -GroupScope global -Path "$deptPath"
            write-host -Foregroundcolor green "[OK] Grupo global $nombreGrupo creado!"
        }
    }

    # [>] CREACIÓN Y UNIÓN DE LOS USUARIOS
    foreach ($lineaInfo in $ficheroCSV){
        $deptPath = (Get-ADOrganizationalUnit -filter 'Name -Like "*"').DistinguishedName -Match $lineaInfo.departamento

        $passwd = "Batoi@1234"
        $passwd = ConvertTo-SecureString -AsPlainText -String $passwd -Force
        $passwdEncriptada = ConvertFrom-SecureString -SecureString $passwd
        $passwd = ConvertTo-SecureString -String $passwdEncrypted

        $usr = ($lineaInfo.nom.substring(0,1) + $lineaInfo.nom.substring(0,2) + $lineaInfo.nom.substring(0,3))
        $usrs = (Get-ADUser -filter 'name -like "*"').Samaccountname
        $cont = 2

        # Comprobar si existe otro igual
        foreach ($usrName in $usrs){
            if ($usr -match $usrName){
                $usr = $usr + $cont
                $cont = $cont + 1
            }
        }

        $homeDirectory = "\\...\carpetasCompartidas\$($usr)" ############# !! CAMBIAR !! ###############
        New-Item -Path $homeDirectory -ItemType Directory > $NULL

        new-ADUser `
            -Name "$usr" `
            -GivenName $lineaInfo.nombre `
            -SurName ($lineaInfo.cognom1 + " " + $lineaInfo.cognom2) `
            -DisplayName ($lineaInfo.nombre + " " + $lineaInfo.cognom1) `
            -Description $lineaInfo.descrip `
            -Office $lineaInfo.dept `
            -emailAddress ($usr + "@" + $emailDominio) `
            -userPrincipalName $usr `
            -samAccountName $usr `
            -ChangePasswordAtLogon $True `
            -Enabled $True `
            -AccountPassword $passwd `
            -Path "$deptPath" `
            -HomeDrive Y: `
            -HomeDirectory $homeDirectory
            
            
            #################### ...........CONTINUAR......... #################### 
            
    }
  }
}
