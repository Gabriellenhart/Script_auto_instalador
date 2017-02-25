#!/bin/bash

clear
while true; do
echo "==========================================================
        Digite o número do componente a ser instalado:
        1 - Ubuntu Tweak
        2 - Codeblocks
        3 - Virtualbox
        4 - VLC player
        0 - Sair
==========================================================="
echo -n "->OPÇÃO:  "

read opcao

#verificar se foi digitada uma opcao
if [ -z $opcao ]; then
    echo "ERRO: digite uma opcao"
    exit
fi

case $opcao in
    1)
        sudo add-apt-repository ppa:tualatrix/next
        sudo apt-get update
        sudo apt-get install ubuntu-tweak;;
    2)
        sudo add-apt-repository ppa:pasgui/ppa
        sudo apt-get update
        sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks -y;;
    3)
        sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
        wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
        sudo apt-get update
        sudo apt-get install virtualbox;;
    4)
        sudo add-apt-repository ppa:videolan/stable-daily
        sudo apt-get update
        sudo apt-get install vlc;;
    0)
        echo "Saindo..."
        exit;;
    *)
        echo
        echo "ERRO: opção inválida"
        echo ;;
esac
done
