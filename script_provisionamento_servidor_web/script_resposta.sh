#!/bin/bash

echo "Atualizando Servidor"

apt-get update
apt-get upgrade -y

echo "Instalando o apache2"

apt-get install apache2 -y

echo "Instalando o unzip"

apt-get install unzip -y

echo "Baixando o arquivo do site na pasta /tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo do site baixado"

unzip main.zip

echo "Copiando os arquivos do site para a pasta padrão apache"

cd linux-site-dio-main
cp -R * /var/www/html/

