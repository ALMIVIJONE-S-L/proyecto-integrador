# CREACIÓN DE LA INSTANCIA DEL BACKUP

> ---
>
>**Antes necesitaremos otro security group, porque el de la intranet también tiene el puerto 80 habilitado y eso no lo queremos.**
>
>![](../../../img/aws-backup-ssh.png)


## CREACIÓN

![](../../../img/aws-backups.png)

## CREACIÓN DEL EFS

### Primero crear el grupo de seguridad en el VPC

_Recordar indicar la ID del grupo de seguridad asignado a la instancia del backup_

![](../../../img/aws-efs-securityGroup.png)

![](../../../img/aws-efs-Check.png)

## CONEXIÓN AL EFS

`yum install -y amazon-efs-utils`

editar fstab.

![](../../../img/aws-backup_fstab.png)

![](../../../img/aws-backup_df-h.png)





