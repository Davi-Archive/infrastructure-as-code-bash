#!/bin/bash

echo "Creating groups"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "groups created successfully"

echo"@@@@@@@@@@@@@@@@@@@"
echo "Ceating Folders..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Folders created"
echo "@@@@@@@@@@@@@@"

echo "Creating users with -G groups"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana"  -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto"  -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c "Josefina"  -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Users created with groups"
echo "@@@@@@@@@@@@"

echo "Permissions chmod"

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finished"
