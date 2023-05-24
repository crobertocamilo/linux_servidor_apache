#!/bin/bash

####Instruções de uso####

#Se a instância já tiver sido iniciada, copie o arquivo para a máquina e execute como um script:
#   sudo chmod +x script_aws.sh
#   ./script_aws.sh

#Se a instância ainda será criada, copie o script para janela "Advanced details > User data" na interface de configuração da instância.
#Neste caso, o Apache (httpd) já estará disponível após a inicialização da máquina.
#Basta acessar a página diretamente pelo IPv4 público da instância!

#Atualiza os pacotes e instala o Apache (httpd)
sudo yum update
sudo yum upgrade -y
sudo yum install httpd -y

#Inicaliza o serviço do Apache
sudo service httpd start

#Baixa a página do Github, a copia e configura para ser exibida pelo Apache
mkdir tmp/
cd tmp/
wget https://raw.githubusercontent.com/crobertocamilo/linux_servidor_apache/main/index.html
sudo cp -r * /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo chown -R apache:apache /var/www/html/
sudo systemctl restart httpd

cd ../
sudo rm -r tmp/