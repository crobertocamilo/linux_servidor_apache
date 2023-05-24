#!/bin/bash

#Atualiza os pacotes e instala o Apache
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y

#Inicaliza o serviço do Apache
sudo service apache2 start
#sudo service apache2 status

#Baixa a página do Github, a copia e configura para ser exibida pelo Apache
mkdir tmp/
cd tmp/
wget https://raw.githubusercontent.com/crobertocamilo/linux_servidor_apache/main/index.html
sudo cp * /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo systemctl restart apache2

cd ../
sudo rm -r tmp/