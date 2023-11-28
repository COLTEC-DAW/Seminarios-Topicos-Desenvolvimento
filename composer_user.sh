#!/bin/bash

# INSTALAÇÃO RESTRITA A USUÁRIO DO COMPOSER
# por Inauê Ferreira da Silva @ 2023

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" # OBTÉM INSTALADOR
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') \
{ echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" # VERIFICA A INTEGRIDADE DO INSTALADOR RECEBIDO
php composer-setup.php # EXECUTA O INSTALADOR
php -r "unlink('composer-setup.php');" # DELETA O INSTALADOR
sudo mv composer.phar ~/.local/bin/composer # MOVENDO O COMPOSER PARA O DIRETÓRIO QUE O TORNARÁ ACESSÍVEL DE QUALQUER OUTRO DIRETÓRIO PARA O USUÁRIO ATUAL
sudo composer selfupdate --2 # ATUALIZA O COMPOSER PARA A VERSÃO 2
