# PERMISOS DE LAS CARPETAS

## DOCUMENTACIÓN:

> Recordar poner **gdl** al **crear los grupos**

> **SIN ACENTOS**

- **DOCUMENTACION** (**L y Ej**):
    - gdlEmpresa-LE
        - todos los departamentos
    - **Direccio**:
        - gdlDireccio-LE (**L y Ej**):
            - ggAdminsitracion
        - gdlDireccio-CT (**CT**):
            - ggGerencia
    - **Comptable**:
        - gdlComptable-M (**Mod**)
            - ggAdministracion
            - ggGerencia
    - **ImasDmasI**:
        - gld_IdI-M (**Mod**)
            - ggLaboratorio
            - ggTecnico
    - **Proves**:
        - gdlProves-M (**Mod**)
            - ggLaboratorio
        - gdlProves-LE (**L y Ej**)
            - ggTecnico
    - **Produccio**
        - gdlProduccion-M (**Mod**)
            - ggProduccion
        - gdlProduccion-LE (**L y Ej**)
            - ggAlmacen
    - **Magatzem**
        - gdlAlmacen-M (**Mod**)
            - ggAlmacen
        - gdlAlmacen-LE (**L y Ej**)
            - ggGerencia
            - ggAdministracion

## ADMIN DOMINIO:

En este directorio compartido será donde estarán todas las carpetas personales, perfiles móviles y obligatorios, scripts, documentos importantes (csv usuarios,etc)

- **AdminDominio**:
    - gdlEmpresa-LE (ya creada anteriormente)

    - **CarpPersonal** (Esta carpeta)
        - gdlEmpresa-LE (**L y Ej**)
    - **PerfMovil** (Esta carpeta)
        - gdlMovil-LE (**L y Ej**)
            - ggComercial
    - **PerfOblig** (Carpeta, subdirectorios y ficheros)
        - gdlOblig-LE (**L y Ej**)
            - ggLaboratorio
            - ggTecnico
    - **Scripts** (Carpeta, subdirectorios y ficheros)
        - gdlEmpresa-LE (**L y Ej**)
    - **DocImportantes** (Carpeta, subdirectorios y ficheros)
        - administradores del dominio (**CT**)