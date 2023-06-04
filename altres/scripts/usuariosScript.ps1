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

<#
====================================================
FUNCIÓN PARA QUITAR ACENTOS (obtenida por internet)
====================================================

https://www.powershellgallery.com/packages/AzureADAssessmentPreview/2.0/Content/internal%5CRemove-Diacritics.ps1
.SYNOPSIS
    Decompose characters to their base character equivilents and remove diacritics.
.DESCRIPTION
 
.EXAMPLE
    PS C:\>Remove-Diacritics 'àáâãäåÀÁÂÃÄÅﬁ⁵ẛ'
    Decompose characters to their base character equivilents and remove diacritics.
.EXAMPLE
    PS C:\>Remove-Diacritics 'àáâãäåÀÁÂÃÄÅﬁ⁵ẛ' -CompatibilityDecomposition
    Decompose composite characters to their base character equivilents and remove diacritics.
.INPUTS
    System.String
.LINK
    https://github.com/jasoth/Utility.PS
#>
function Remove-Diacritics {
    [CmdletBinding()]
    param
    (
        # String value to transform.
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [AllowEmptyString()]
        [string[]] $InputStrings,
        # Use compatibility decomposition instead of canonical decomposition which further decomposes composite characters and many formatting distinctions are removed.
        [Parameter(Mandatory = $false, ValueFromPipelineByPropertyName = $true)]
        [switch] $CompatibilityDecomposition
    )

    process {
        [System.Text.NormalizationForm] $NormalizationForm = [System.Text.NormalizationForm]::FormD
        if ($CompatibilityDecomposition) { $NormalizationForm = [System.Text.NormalizationForm]::FormKD }
        foreach ($InputString in $InputStrings) {
            $NormalizedString = $InputString.Normalize($NormalizationForm)
            $OutputString = New-Object System.Text.StringBuilder

            foreach ($char in $NormalizedString.ToCharArray()) {
                if ([Globalization.CharUnicodeInfo]::GetUnicodeCategory($char) -ne [Globalization.UnicodeCategory]::NonSpacingMark) {
                    [void] $OutputString.Append($char)
                }
            }

            Write-Output $OutputString.ToString()
        }
    }
}

<#
===============================================
FUNCIÓN PARA SACAR EL NOMBRE LOGIN DEL USUARIO
===============================================
#>
# Creado por mí
function nombreUsuarios{
    param(
        [string[]]$nombre,
        [string[]]$apellido1,
        [string[]]$apellido2
    )
    
    $usr = ($nombre.substring(0,1) + $apellido1.substring(0,2) + $apellido2.substring(0,3))
    $usr = Remove-Diacritics $usr
    $usr = $usr.toLower()
    $usr #Output
}

# ========= VARIABLES ======== #

  # [+] nom SEDE
  $sede = "Barcelona"

  # [+] DOMINIO
  $finalDominio = "lan"
  $dominio = $sede + "." + $finalDominio
  
  # [+] UNIDAD ORGANIZATIVA RAÍZ
  $raizUO = "Empresa" #$sede.ToUpper()

  # [+] LEER EL FICHERO .CSV
  $ruta = "C:\Users\Administrador\Desktop\usuaris(2).csv" #### CAMBIAR RUTA !! ####
  $ficheroCSV = import-csv $ruta
  
  # [+] LISTA ACTUAL DE LAS UNIDADES ORGANIZATIVAS
  $listaActualUO = Get-ADOrganizationalUnit -Filter 'Name -like "*"'

  # [+] DEPARTAMENTOS
  # Necesitaremos meter el nombre de los departamentos en un array para la creación de las UOs y Grupos
  $departamentos = $(
    foreach ($lineaInfo in $ficheroCSV){
      Remove-Diacritics $lineaInfo.dept
    }
  ) | sort-object | get-unique

# Añadir Jefe al array, para que se cree también el grupo.
$jefeDept = "JefesDepartamento"
$departamentos += $jefeDept
  
# ========= CÓDIGO =========== #

# [+] COMPROBACIÓN SEDE

if ($ficheroCSV.sede -match $sede){

    # [>] UNIDAD ORGANIZATIVA RAÍZ
    if ($listaActualUO.Name -eq $raizUO){
        write-host -ForegroundColor Yellow "[aviso]: Ya existe la UO $raizUO, no la crearé de nuevo."
    }
    else{
        New-ADOrganizationalUnit -Name $raizUO -Path "DC=miguel,DC=aitex,DC=lan"  -ProtectedFromAccidentalDeletion $False #"DC=$($sede),DC=$($finalDominio)"
        write-host -Foregroundcolor green "[OK] La Unidad Organizativa $raizUO ha sido creada con exito!"
    }

    # [>] UNIDAD ORGANIZATIVA DENTRO DE RAÍZ
    $rutaRaizUO = Get-ADOrganizationalUnit -Filter 'Name -like $raizUO' | Select-Object -ExpandProperty DistinguishedName
    foreach ($nomDept in $departamentos){
        if ($listaActualUO.name -eq $nomDept){
            write-host -ForegroundColor yellow "[AVISO] Como ya existe la UO $nomDept, NO se creará"
        }
        else{
            New-ADOrganizationalUnit -Name $nomDept -Path $rutaRaizUO -ProtectedFromAccidentalDeletion $False
            write-host -Foregroundcolor green "[OK] La Unidad Organizativa $nomDept ha sido creada con exito!"
        }
    }

    # [>] GRUPOS GLOBALES

    foreach ($nomGrupo in $departamentos){
        $deptPath = (Get-ADOrganizationalUnit -filter 'Name -Like "*"').DistinguishedName -Match "$nomGrupo"
        $nomGrupo = "gg" + $nomGrupo # QUITAR ACENTOS!!!
        $raicesAD = (Get-ADGroup -Filter 'Name -like "*"' | where-object {$_.GroupScope -eq "Global" -and $_.DistinguishedName -Match "OU=$raizUO"} ).DistinguishedName

        if ($raicesAD -match $nomGrupo){
            write-host -ForegroundColor yellow "[AVISO] El Grupo $nomGrupo ya existe"
        }
        else {
            New-ADGroup -Name $nomGrupo -GroupScope global -Path "$deptPath"
            write-host -Foregroundcolor green "[OK] Grupo global $nomGrupo creado!"
        }
    }
    
    # [>] CREACIÓN Y UNIÓN DE LOS USUARIOS
    $usrs = $(foreach ($fila in $ficheroCSV){
                 if ($fila.sede -match $sede){
                    nombreUsuarios -nombre $fila.nom -apellido1 $fila.cognom1 -apellido2 $fila.cognom2
                 }
              })

    foreach ($lineaInfo in $ficheroCSV){
        if ($lineaInfo.sede -match $sede){

            $lineaInfoDept = Remove-Diacritics $lineaInfo.dept
    
            #Importante el [string] para convertir de object a string.
            [string]$deptPath = (Get-ADOrganizationalUnit -filter 'Name -Like "*"').DistinguishedName -Match $lineaInfoDept

            $passwd = "Batoi@1234"
            $passwd = ConvertTo-SecureString -AsPlainText -String $passwd -Force
            $passwdEncriptada = ConvertFrom-SecureString -SecureString $passwd
            $passwd = ConvertTo-SecureString -String $passwdEncriptada


            $usr = nombreUsuarios -nombre $lineaInfo.nom -apellido1 $lineaInfo.cognom1 -apellido2 $lineaInfo.cognom2

            $cont = 2

            $creado = (get-ADUser -Filter "*").samaccountname -match $usr

            if ($usr -like $creado){ #Si coincide el actual nombre de usuario con otro creado, añadirá un número consecutivo al lado del nombre
                    $usr = $usr + $cont
                    $cont = $cont + 1
            }

            # RUTA COMPARTIDA --|
            $homeDirectory = "C:\scriptUser\$($usr)" # !! CAMBIAR !!   ####### RUTA ############### RUTA ############### RUTA ############### RUTA ########
            try{
                # ErrorAction puede ser abreviado a -ea, e indica que cuando de error lo pare.
                New-Item -Path $homeDirectory -ItemType Directory -ErrorAction stop > $NULL  
            }
            catch{
                    write-host -Foregroundcolor yellow "[AVISO] El directorio $homeDirectory ya está creado, no lo crearé."
            }

            try{
              new-ADUser `
                  -Name $usr `
                  -GivenName $lineaInfo.nom `
                  -SurName ($lineaInfo.cognom1 + " " + $lineaInfo.cognom2) `
                  -DisplayName ($lineaInfo.nom + " " + $lineaInfo.cognom1) `
                  -Description $lineaInfo.descrip `
                  -Office $lineaInfo.dept `
                  -userPrincipalName $usr `
                  -samAccountName $usr `
                  -ChangePasswordAtLogon $True `
                  -Enabled $True `
                  -AccountPassword $passwd `
                  -Path $deptPath `
                  -HomeDrive Y: `
                  -HomeDirectory $homeDirectory

              Write-Host -ForegroundColor green "[OK] $usr ha sido creado con éxito!"
            }
            catch{
              Write-Host -ForegroundColor red "[WARN] $usr ya existe!"
            }

            # [x] Perfil Movil
            if ($lineaInfo.dept -eq "Comercial"){
                $rutaPerfilMovil = "C:\scriptUser\$($usr)" ####### RUTA ############### RUTA ############### RUTA ############### RUTA ########
                set-ADUser -identity $usr -ProfilePath $rutaPerfilMovil
            }

            # [x] Perfil Obligatorio
            if ($lineaInfoDept -eq "Laboratorio" -or $lineaInfoDept -eq "Tecnico"){
                $rutaPerfilObligatorio = "\\gui-srv-13\AdminDominio-13$\aula-13\perfilObligatorio\obligatorio-13.V6" ####### RUTA ############### RUTA ############### RUTA ############### RUTA ########
                set-ADUser -identity $usr -ProfilePath $rutaPerfilObligatorio -LogonWorkstations "CLIENTE-13"
            }

            # [x] Carpeta Personal

            # AÑADIR PERMISOS AL DIRECTORIO DE CARPETA PERSONAL
            # Permisos Actual es
            $acl = Get-Acl -Path $homeDirectory #Permisos Actuales
            # Credenciales:
            $usuario = "$($dominio)\$($usr)" #Usuario el cual será el editado
            $tipoPermiso = "Modify" #Permisos de modificar
            $afectarAHijos = "ContainerInherit,ObjectInherit" #"ContainerInherit"
            $tipo = "Allow" #Permitimos el acceso

            #Creación de la nueva regla:
            $reglaListaArgumentos = $usuario,$tipoPermiso,$afectarAHijos,"none",$tipo
            $regla = New-Object System.Security.AccessControl.FileSystemAccessRule ($reglaListaArgumentos) #Estamos utilizando métodos del framework .NET
            $acl.setAccessRule($regla) #Agregación de las nuevas reglas a los permisos actuales
            #Aplicar la regla creada:
            Set-Acl -Path $homeDirectory -AclObject $acl

            #https://learn.microsoft.com/en-us/dotnet/api/system.security.accesscontrol.filesystemaccessrule?view=net-7.0

            # AÑADIR EL USUARIO A SU GRUPO CORRESPONDIENTE
            $grupoGlobal = "gg" + $lineaInfoDept
            Add-ADGroupMember -Identity $grupoGlobal -Members $usr
            Write-Host -ForegroundColor magenta "[OK] El usuario $usr ha sido añadido a $grupoGlobal con éxito!"

            # [x] AÑADIR JEFE AL GRUPO
            if($lineaInfo.descrip -like "Jefe"){
                $grupoGlobalJefe = "gg" + $jefeDept
                #echo $grupoGlobalJefe
                Add-ADGroupMember -Identity $grupoGlobalJefe -Members $usr
            }
        }
    }
}
