#!/bin/bash

# INSTALAÇÃO DAS DEPENDÊNCIAS DO PROJETO PHP
# por Inauê Ferreira da Silva @ 2023
# PASSE O DIRETÓRIO DO PROJETO NO QUAL DESEJA USAR O COMPOSER COMO PARÂMETRO

sudo docker pull composer/composer # ADQUIRE A IMAGEM DO COMPOSER
sudo docker run --rm -it -v "$1:/app" composer/composer composer install # EXECUTA A INSTALAÇÃO DAS DEPENDÊNCIAS
