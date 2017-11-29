#!/usr/bin/env bash

curl -Ss https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
sudo apt-get update

pt-get install git
sudo apt-get update
sudo rm -rf /PSI
git clone https://github.com/davidmeimoun/PSI
sudo rm -rf /vagrant/PSI
mv PSI /vagrant

cd /vagrant/PSI
export COMPOSER_ALLOW_SUPERUSER=1
composer install
