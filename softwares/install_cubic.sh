#!/bin/bash
echo "
			================
			INSTALANDO CUBIC
			================
"
sudo apt-add-repository ppa:cubic-wizard/release -y

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

sudo apt update && sudo apt install cubic -y

echo "
		===========================
		Cubic Instalado Com Sucesso
		===========================
"
