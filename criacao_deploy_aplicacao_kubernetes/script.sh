#!/bin/bash

echo "Criando as imagens"
echo "******************"

docker build -t <nome_usuario_docker>/<nome_projeto1>:<tag|version> backend/.
docker build -t <nome_usuario_docker>/<nome_projeto2>:<tag|version> database/.

echo "Enviando as imagens para o docker hub"
echo "********************"

docker push <nome_usuario_docker>/<nome_projeto1>:<tag|version>
docker push <nome_usuario_docker>/<nome_projeto2>:<tag|version>

echo "Criando serviços no cluster Kubernetes"
echo "********************"

kubectl apply -f ./services.yml

echo "Criando os deployments no cluster Kubernetes"
echo "********************"

kubectl apply -f ./deployment.yml