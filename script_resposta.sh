#!/bin/bash

echo "Criação de diretórios - Início"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação de diretórios - Fim"

echo "Criação de Grupos - Início"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Grupos - Fim"

echo "Criação de Usuários - Início"

useradd carlos -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl psswd -crypt user12345)
-G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl psswd -crypt user12345) -G GRP_SEC

echo "Criação de Usuários - Fim"

echo "Permissões dos diretórios - Início"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões dos diretórios - Fim"

echo "Fim do processo"
