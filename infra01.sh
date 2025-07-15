#!/bin/bash

echo "Criando os diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC
useradd zezin -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC
useradd tiao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -g GRP_SEC

echo "Especificando permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim..."
