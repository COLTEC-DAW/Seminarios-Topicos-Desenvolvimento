#!/bin/bash

# INSTALAÇÃO GLOBAL DO COMPOSER
# por Inauê Ferreira da Silva @ 2023

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" # OBTEM INSTALADOR
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') \
{ echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" # VERIFICA A INTEGRIDADE DO INSTALADOR RECEBIDO
php composer-setup.php # EXECUTA O INSTALADOR
php -r "unlink('composer-setup.php');" # DELETA O INSTALADOR
sudo mv composer.phar /usr/local/bin/composer # MOVENDO O COMPOSER PARA O DIRETORIO QUE O TORNARA ACESSIVEL DE QUALQUER OUTRO DIRETORIO POR QUALQUER USUARIO
sudo composer selfupdate --2 # ATUALIZA O COMPOSER PARA A VERSÃO 2
