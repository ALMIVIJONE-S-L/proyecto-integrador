# CREACIÓN DEL VPC AWS

![](../../../img/aws-vpc.png)


La siguiente captura tendrá una modificación en las subredes, para añadir otra más para el servidor de backups.

![](../../../img/aws-vpc-newSubnet.png)

![](../../../img/aws-vpc-subnets.png)

# ASOCIAR LA SUBNET NUEVA

Este paso es preciso para poder conectarnos a ella

![](../../../img/aws-vpc-SubnetAssociation.png)

![](../../../img/aws-vpc-SubnetAssociationCheck.png)

Todas las instancias usarán el mismo .pem (gran error, pero debido al tipo de trabajo es más que suficiente), está en un zip con pwd B..@..4