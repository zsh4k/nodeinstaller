#!/bin/bash

#Crear carpeta nodejs
cd /
cd usr/local/lib/
mkdir nodejs
cd nodejs/

#Descargando binarios v16.18.0
wget https://nodejs.org/dist/v16.18.0/node-v16.18.0-linux-x64.tar.xz

#Descomprimiendo
tar -xJvf node-v16.18.0-linux-x64.tar.xz -C /usr/local/lib/nodejs/

#Configurar variables de entorno
export NODEJS_HOME=/usr/local/lib/nodejs/node-v16.18.0-linux-x64/bin/
export PATH=$NODEJS_HOME:$PATH

#Refrescar el perfil
. ~/.profile

#Comprovar version de node y npm
echo Version de Nodejs...
node -v
echo Version de NPM...
npm -v