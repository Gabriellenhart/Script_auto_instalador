#!/bin/bash

clear
while true; do
echo "==========================================================
        Digite o número do componente a ser instalado:
        1 - Ubuntu Tweak
        2 - Codeblocks
        3 - Virtualbox
        4 - VLC player
	5 - Chrome amd64
	6 - Remover Chrome
	7 - Oracle Java 8
	8 - Remover Java 8
	9 - Flash Palyer para firefox
	10 - Remover Flash Player
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
    
    
    5)  #Versão estável do repositório Google-Chorme amd64.
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	#Chave de acesso ao repositório.
	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install google-chrome-stable;;

    6)	sudo apt-get remove google-chrome-stable;;
	
	#Java 8 e de derivados.
    7)  sudo apt-get purge openjdk*
	#Repositório atualizado da ultima versão.
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java8-installer;;
	#Ao executar o instalador, você terá que concordar com os termos de uso, para poder finalmente baixar e instalar o Java
	#Se for necessário configurar mais alguma coisa, execute o comando: 
	#sudo apt-get install oracle-java8-set-default.

     8) sudo apt-get install ppa-purge -y #Remover Java.
	sudo ppa-purge ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get autoremove;;

	#Repositório Adobe Flash Player para Firefox
    9)	wget https://fpdownload.adobe.com/pub/flashplayer/pdc/24.0.0.194/flash_player_ppapi_linux.x86_64.tar.gz -O flash.tar.gz
	tar -zxvf flash.tar.gz
	sudo cp libflashplayer.so /usr/lib/mozilla/plugins/
	sudo cp -r usr/* /usr
	

    0)
        echo "Saindo..."
        exit;;
    *)
        echo
        echo "ERRO: opção inválida"
        echo ;;
esac
done
