#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec 

echo "Criando grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_VEM
groupadd GRP_SEC

echo "Criando usuários ..."

useradd hirlam -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd caio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd denisson -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd grafe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd nunes -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd castro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM

useradd marce -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd celo  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd silva -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo " Especificando permissões dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEM /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 777 /publico

echo "Fim ..."




