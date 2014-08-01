#!/bin/bash
#
# Developed by Rafael Corrêa Gomes
# Contact rafaelcgstz@gmail.com
#

chrome.sh(){
	clear;


	echo -e "
		${txtblu}
What's your version?

${txtrst}
1) 32 bits 
2) 64 bits
	"
	    read version

case $version in

    # Performs the function with the name of the variable passed
    1) echo "teste" ;;
    2) echo "teste" ;;
    *) chrome.sh ;;

esac
}

#Functions

chrome32(){	
	sudo apt-get install -y libxss1 libappindicator1 libindicator7 ;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb ;
	sudo dpkg -i google-chrome*.deb ;
	google-chrome ;;
}

chrome64(){
	sudo apt-get install -y libxss1 libappindicator1 libindicator7 ;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb ;
	sudo dpkg -i google-chrome*.deb ;
	google-chrome ;;
}
