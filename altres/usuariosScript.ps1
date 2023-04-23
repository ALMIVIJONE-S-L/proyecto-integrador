/*
SCRIPT PARA LA CREACIÓN DE USUARIOS
Recordar: Este script al igual que el csv, deben de estar en las respectivas carpetas donde se hacen los backups y tal

Carácterísticas del script:
- CREAR UOs
- CREAR GRUPOS, AÑADIRLOS A UOs
- CREAR USUARIOS, AÑADIRLOS A GRUPOS Y UOs
- [SUGERENCIA] PERFILES MÓVILES AUTOMÁTICAMENTE
- [SUGERENCIA] PERFILES OBLIGATORIOS AUTOMÁTICAMENTE
- [SUGERENCIA] CARPETA PERSONAL AUTOMÁTICAMENTE
*/

/*
================================
EJEMPLO DEL .CSV DE LOS USUARIOS:
================================
nom,cognom1,cognom2,dni,sede,dept,descrip
ABEL,ZAFRILLA,PASCUAL,17629125,Alcoi,Gerencia,Jefe
AITANA,VIDAL,RIBERA,68793380,Alcoi,Administración,Jefe
ALEJANDRA,VIDAL,TORREGROSA,65006955,Alcoi,Administración,Miembro
================================
PRECAUCIONES: Tener cuidado con los acentos, puede ser que explote algún comando por eso, probablmente eso habrá que solucionarlo.
*/
# ========= VARIABLES ======== #

  # [+] SEDE
  $sede = "Barcelona"

  # [+] DOMINIO
  $dominio = W$sede".lan"
  
  # [+] UNIDAD ORGANIZATIVA RAÍZ
  $raizUO = "BARCELONA"

  # [+] LEER EL FICHERO .CSV
  $ruta = "......ruta......\usuaris.csv"
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
    
    ...................CÓDIGO...............
    
  }
}



