ear
while true; do
echo "==========================================================
                Digite o número para realizar a função desejada:
        1 - Instalar todos os programas úteis.
	Xpdf
	Vim
	Vlc
	Git
	Links	
	Youtube-dl
	Virtualbox
	Arduino
	Aircrack-ng
	Nmap
	Htop
	gcc
	Weechat
	Chrome amd64
	Java 8
	

        0 - Sair
==========================================================="
echo -n "->OPÇÃO:  "

read opcao

#verificar se foi digitada uma opcao
if [ -z $opcao ]; then
    echo "ERROOOOOOOU!!! Digita certo ai meu."
    exit
fi

case $opcao in
    1)
	sudo apt-get update
	sudo apt-get install Xpdf -y
	sudo apt-get install vim -y
	sudo apt-get install vlc -y
	sudo apt-get install git -y
	sudo apt-get install links -y
	sudo apt-get install youtube-dl
	sudo apt-get install virtualbox -y
	sudo apt-get install redshift-gtk -y
	sudo apt-get install arduino -y
	sudo apt-get install aircrack-ng -y
	sudo apt-get install nmap -y
	sudo apt-get install htop -y
	sudo apt-get install gcc -y
	sudo apt-get install weechat -y
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' -y
        wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install google-chrome-stable -y
	sudo add-apt-repository ppa:webupd8team/java -y
	sudo apt-get install oracle-java8-installer -y;;
    0)
 "Saindo..."
        exit;;
    *)
        echo
        echo "ERROOOOOOOU!!!: Digita certo ai meu!"
        echo ;;
esac
done

