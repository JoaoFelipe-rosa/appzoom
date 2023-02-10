#!/bin/bash
echo "
			================
			INSTALANDO CUBIC
			================
"
sudo apt-add-repository ppa:cubic-wizard/release -s

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -s

sudo apt update && sudo apt install cubic -s

echo "
			===============
			CUBIC INSTALADO
			===============
"
clear

echo "
		===========================
		Cubic Instalado Com Sucesso
		===========================
"
